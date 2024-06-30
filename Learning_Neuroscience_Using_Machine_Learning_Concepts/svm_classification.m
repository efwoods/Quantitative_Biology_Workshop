%% Load the data
load("MEG_decoding_data_final.mat")

%% Train the SVM Classifier
SVMStruct = fitcsvm(train_data, train_cat_labels, "Standardize", 'on');

%% Test the SVM Classifier
pred = predict(SVMStruct, test_data);

%% Continue: https://learning.edx.org/course/course-v1:MITx+7.QBWx+2T2024/block-v1:MITx+7.QBWx+2T2024+type@sequential+block@3100fb21b6c54636aaad41f7020e8b8e/block-v1:MITx+7.QBWx+2T2024+type@vertical+block@6310614c9bef477ca7a17db1f8f24213

