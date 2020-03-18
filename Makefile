ROOT := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
STATIC_SRC=src/early.xdc src/normal.xdc src/floorplanning.xdc src/mig_a.prj src/Top.bd
RECONFIGURABLE_SRC=src/tests_axi_lite_slave_top.v
BUILD=build
ARCHIVE=archive

${ARCHIVE}/timestamp: ${BUILD}/nf_popr.mcs
	@mkdir -p $(dir $@)
	tar czvf ${ARCHIVE}/nf_popr_`date +%Y%m%d_%H%M%S -r $<`.tar.gz ${BUILD}/*.{dcp,bit,mcs}
	echo `date +%Y%m%d_%H%M%S -r $<` > $@

${BUILD}/nf_popr.mcs: scripts/write_mcs.tcl ${BUILD}/nf_popr.bit
	@mkdir -p $(dir $@)
	(cd $(dir $@); vivado -mode batch -source ${ROOT}$<)
${BUILD}/nf_popr.bit: ${BUILD}/design.dcp

${BUILD}/design.dcp: ${BUILD}/static.dcp ${BUILD}/reconfigurable_module.dcp
${BUILD}/static.dcp: ${STATIC_SRC}
${BUILD}/reconfigurable_module.dcp: ${STATIC_SRC} ${RECONFIGURABLE_SRC}

${BUILD}/%.dcp: scripts/build_%.tcl
	@mkdir -p $(dir $@)
	(cd $(dir $@); vivado -mode batch -source ${ROOT}$<)

.PHONY: clean
clean:
	rm -rf ${BUILD}

.PHONY: prog_partial
prog_partial: ${BUILD}/reconfigurable_module.dcp
	(cd ${BUILD}; vivado -mode batch -source ${ROOT}scripts/program.tcl)

