%% Load the data
load("MEG_decoding_data_final.mat")

%% Train the SVM Classifier
SVMStruct = fitcsvm(train_data, train_cat_labels, "Standardize", 'on');

%% Test the SVM Classifier
pred = predict(SVMStruct, test_data);

%% Display the predicted and ground truth labels
pred'
test_cat_labels

%% Calculate the accuracy of the SVM classifier
A = sum(pred' == test_cat_labels);
accuracy = A/length(pred);