logdir="../logs"
composedir="../compose"
mkdir -p $logdir

file_command=""

for compose_file in $composedir/*.yml; do
        file_command="${file_command} -f ${compose_file}"
done
