include $(env).env


check_changes:
	aws cloudformation create-change-set \
	--stack-name $(stack_name) \
	--change-set-name SampleChangeSet \
	--template-body file://stack_full.yml \
	--include-nested-stacks \
	--profile $(profile) --region $(region)
	

deploy: prepare upload
	aws cloudformation deploy \
    --template-file stack_full.yml \
    --stack-name $(stack_name) \
    --capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND CAPABILITY_NAMED_IAM \
	--profile $(profile) --region $(region)

clean:
	rm -fr stack_full.yml

upload:
	aws s3 sync ./ $(codeupload_path) \
	--include "*" \
	--exclude ".git/*" \
	--profile $(profile)

prepare:
	python3 make_cf_template.py stack.yml $(foreach V,$(sort $(.VARIABLES)),$(if $(filter-out environment% default automatic,$(origin $V)), "$V=$($V)")) > stack_full.yml;
