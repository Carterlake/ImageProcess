function nClass = classify(newFacePath)
% �������ࣨʶ�𣩹���

display(' ');
display(' ');
display('ʶ��ʼ...');

% �������ѵ�����
display('����ѵ������...');
load('Mat/PCA.mat');
load('Mat/scaling.mat');
load('Mat/trainData.mat');
load('Mat/multiSVMTrain.mat');
display('..............................');

xNewFace = ReadAFace(newFacePath); % ����һ����������
xNewFace = double(xNewFace);
% TestFace = (TestFace-repmat(meanVec, m, 1))*V;
xNewFace = (xNewFace-repmat(meanVec, 1, 1))*V; % ����pca�任��ά
xNewFace = scaling(xNewFace,1,A0,B0);


display('����ʶ����...');
nClass = multiSVMClassify(xNewFace);
display('..............................');
display(['����ʶ����������Ϊ��' num2str(nClass), '��']);
