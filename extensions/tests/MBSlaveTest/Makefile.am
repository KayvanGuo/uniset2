noinst_PROGRAMS = mbslave-test
mbslave_test_LDADD = $(top_builddir)/lib/libUniSet2.la \
	$(top_builddir)/extensions/lib/libUniSet2Extensions.la \
	$(top_builddir)/extensions/SharedMemory/libUniSet2SharedMemory.la \
	$(top_builddir)/extensions/ModbusSlave/libUniSet2MBSlave.la \
	$(SIGC_LIBS) $(POCO_LIBS)
mbslave_test_CPPFLAGS = -I$(top_builddir)/include \
	-I$(top_builddir)/extensions/include \
	-I$(top_builddir)/extensions/SharedMemory \
	-I$(top_builddir)/extensions/ModbusSlave \
	$(SIGC_CFLAGS) $(POCO_CFLAGS)
mbslave_test_SOURCES = TestProc_SK.cc TestProc.cc mbslave-test.cc

BUILT_SOURCES=TestProc_SK.cc TestProc_SK.h

TestProc_SK.cc TestProc_SK.h: testproc.src.xml
	$(top_builddir)/Utilities/codegen/@PACKAGE@-codegen -l $(top_builddir)/Utilities/codegen --ask -n TestProc --local-include --topdir $(top_builddir)/ --no-main testproc.src.xml

clean-local:
	rm -rf *_SK.cc *_SK.h

include $(top_builddir)/include.mk
