cd ~/openvino/inference-engine/thirdparty/clDNN
#build
if [ $2 -eq 1 ];
then
	echo "#define PARAM "$1 > ~/openvino/inference-engine/thirdparty/clDNN/tests/test_cases/PARAM.h
	echo "#define CHECK_RESULTS" >> ~/openvino/inference-engine/thirdparty/clDNN/tests/test_cases/PARAM.h
else
	echo "#define PARAM "$1 > ~/openvino/inference-engine/thirdparty/clDNN/tests/test_cases/PARAM.h
fi

cd ~/openvino/build/inference-engine/thirdparty/clDNN && make -j8 && cd -
