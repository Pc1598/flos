cd vendor/lineage
git fetch https://github.com/Pc1598/android_vendor_lineage.git 
git merge FETCH_HEAD
cd ../..

cd system/core
git fetch https://github.com/AOSPA/android_system_core 16453cbe4202bda25c1ad6ad75f257133d58d1f1
git cherry-pick 16453cbe4202bda25c1ad6ad75f257133d58d1f1
cd ../..

cd bionic
git fetch https://github.com/AOSPA/android_bionic 832a9f5bc28b4c032052a48adf1b89debd539df9
git cherry-pick 832a9f5bc28b4c032052a48adf1b89debd539df9
cd ..

cd frameworks/base
git fetch https://github.com/Pc1598/android_frameworks_base
git merge FETCH_HEAD
cd ../..
