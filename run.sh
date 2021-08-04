params=("14_14_512" "28_28_256" "28_28_512" "56_56_128" "56_56_256" "112_112_64" "112_112_128" "224_224_3" "224_224_64")
~/openvino/bin/intel64/Release/clDNN_unit_tests64 --gtest_filter=my_convolution_gpu.cldnn_vgg16_2dconv
