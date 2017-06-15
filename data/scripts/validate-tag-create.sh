# { autofold
#!/bin/bash

function checkTagExists {
  FINISHED=0
  while [ $FINISHED -eq 0 ]; do
    if [ -e .git ] && [ `git tag -l | grep "v1.0.0" | wc -l` != 0 ]
    then
      echo "TECHIO> success true"
      FINISHED=1
    fi
    sleep 1
  done 
}
echo "TECHIO> terminal -i 'cd repositories/git-course-tag-create'"

cd repositories/git-course-tag-create
checkTagExists
# }
