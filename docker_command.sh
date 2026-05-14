# best command currently
sudo docker run --rm \
  -v ~/bids_clean:/bids_input \
  -v ~/deepprep_output:/output \
  -v ~/license.txt:/opt/freesurfer/license.txt \
  --entrypoint /bin/bash \
  pbfslab/deepprep:25.1.0 \
  -c "/opt/DeepPrep/deepprep/deepprep.sh /bids_input /output participant --participant_label apat101 --anat_only --fs_license_file /opt/freesurfer/license.txt --skip_bids_validation"

