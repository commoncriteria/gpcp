-include User.make
-include ~/commoncriteria/User.make
DIFF_USER_MAKE=User.make
DIFF_TAGS=pre-pub-initial
TRANS?=transforms
include $(TRANS)/Helper.make

#- Path to output of effective xml file
EFF_XML ?= output/effective.xml

#- Path to output effective
EFF_HTML ?= output/effective.html

effective-html:
	python3 $(TRANS)/py/cc_apply_tds.py $(PP_XML) $(TDs) >$(EFF_XML)
	$(call DOIT,$(EFF_XML),$(PP2HTML_XSL),$(EFF_HTML),$(APP_PARM) $(FNL_PARM)) 

#$(EFF_XML): $(PP_XML) $(TDs)
#- Target to make the effective PP (with TDs applied)
effective:
	python3 $(TRANS)/py/cc_apply_tds.py $(PP_XML) $(TDs) >$(EFF_XML)
#	$(call VALIDATOR,$(RNG_FILE),$(EFF_XML),&1)
