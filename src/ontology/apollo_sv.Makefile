## Customize Makefile settings for apollo_sv
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile


.PHONY: mirror-bcio
.PRECIOUS: $(MIRRORDIR)/bcio.owl
mirror-bcio: | $(TMPDIR)
        $(ROBOT) convert -I http://humanbehaviourchange.org/ontology/bcio.owl -o $(TMPDIR)/$@.owl

$(IMPORTDIR)/bcio_import.owl: $(MIRRORDIR)/bcio.owl $(IMPORTDIR)/bcio_terms.txt \
				$(IMPORTSEED) | all_robot_plugins
	$(ROBOT) merge --input $< \
		annotate --remove-annotations \
		odk:normalize --add-source true \
		remove --base-iri http://humanbehaviourchange.org/ontology/BCIO_ \
			--axioms external \
			--preserve-structure false --trim false \
		remove $(foreach p, $(ANNOTATION_PROPERTIES), --term $(p)) \
			--term-file $(IMPORTDIR)/bcio_terms.txt $(T_IMPORTSEED) \
			--select complement \
		odk:normalize --base-iri http://humanbehaviourchange.org/ontology \
			--subset-decls true --synonym-decls true \
		repair --merge-axiom-annotations true \
		$(ANNOTATE_CONVERT_FILE)
