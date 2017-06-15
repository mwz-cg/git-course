# { autofold
#!/bin/bash

function checkTagAlreadyExists {
  FINISHED=0
  while [ $FINISHED -eq 0 ]; do
    if [ -e lapin ] && grep "tag '.*' already exists" lapin; then
      echo "TECHIO> success true"
      FINISHED=1
    fi
    sleep 1
  done
}
echo "TECHIO> terminal -s 'bash -c \"bash -i 2>&1 | tee lapin; exit $?\"' -i 'cd repositories/git-course-tag-update'"

checkTagAlreadyExists
# }
