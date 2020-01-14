ROOT := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
STATIC_SRC=src/early.xdc src/normal.xdc src/floorplanning.xdc src/mig_a.prj src/Top.bd src/Top_wrapper.v
RECONFIGURABLE_SRC=src/tests_axi_lite_slave_top.v
BUILD=build

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
