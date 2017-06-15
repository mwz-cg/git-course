# { autofold
#!/bin/bash

echo add something awesome > /tmp/rebase-branch-expected
echo remove lapin >> /tmp/rebase-branch-expected
echo add master feature >> /tmp/rebase-branch-expected
echo add me >> /tmp/rebase-branch-expected

function checkHistoryRebased {
  FINISHED=0
  while [ $FINISHED -eq 0 ]; do
    if [ -e .git ]; then
      git log --format=%s new-feature > /tmp/rebase-branch-actual
      if cmp -s /tmp/rebase-branch-actual /tmp/rebase-branch-expected; then
        echo "TECHIO> success true"
        FINISHED=1
      fi
    fi
    sleep 1
  done 
}
echo "TECHIO> terminal -i 'cd repositories/git-course-rebase-branch'"

cd repositories/git-course-rebase-branch
checkHistoryRebased
# }
