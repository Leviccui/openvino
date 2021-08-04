cd ~/openvino/inference-engine/thirdparty/clDNN
#build
if [ $2 -eq 1 ];
then
	echo "#define PARAM "$1 > ~/openvino/inference-engine/thirdparty/clDNN/tests/test_cases/PARAM.h
	echo "#define CHECK_RESULTS" >> ~/openvino/inference-engine/thirdparty/clDNN/tests/test_cases/PARAM.h
else
	echo "#define PARAM "$1 > ~/openvino/inference-engine/thirdparty/clDNN/tests/test_cases/PARAM.h
fi

cd ~/openvino/build/inference-engine/thirdparty/clDNN && make -j8 && cd ..

#run
#params=("14_14_512" "28_28_256" "28_28_512" "56_56_128" "56_56_256" "112_112_64" "112_112_128" "224_224_3" "224_224_64")
build/out/Linux64/Release/tests64 --gtest_filter=my_convolution_gpu.my_vgg16_2dconv
build/out/Linux64/Release/tests64 --gtest_filter=my_convolution_gpu.cldnn_vgg16_2dconv
