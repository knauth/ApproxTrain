echo "NO OPT"
make clean && make convam MULTIPLIER=FMBM16_MULTIPLIER && make denseam_gpu.so MULTIPLIER=FMBM16_MULTIPLIER
echo "lenet31"
python3 profile.py --model=lenet31 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "lenet5"
python3 profile.py --model=lenet5 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet18"
python3 profile.py --model=resnet18 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet34"
python3 profile.py --model=resnet34 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet50"
python3 profile.py --model=resnet50 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet50ImageNet"
python3 profile.py --model=resnet50ImageNet --batch-size=32 --batch-number=5 --am=1 --gpu=1

echo "OPT 1lut texture"
make clean && make convam MULTIPLIER=FMBM16_MULTIPLIER OPT=1 && make denseam_gpu.so MULTIPLIER=FMBM16_MULTIPLIER OPT=1
echo "lenet31"
python3 profile.py --model=lenet31 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "lenet5"
python3 profile.py --model=lenet5 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet18"
python3 profile.py --model=resnet18 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet34"
python3 profile.py --model=resnet34 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet50"
python3 profile.py --model=resnet50 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet50ImageNet"
python3 profile.py --model=resnet50ImageNet --batch-size=32 --batch-number=5 --am=1 --gpu=1

echo "OPT 2lut texture"
make clean && make convam MULTIPLIER=FMBM16_MULTIPLIER OPT=2 && make denseam_gpu.so MULTIPLIER=FMBM16_MULTIPLIER OPT=2
echo "lenet31"
python3 profile.py --model=lenet31 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "lenet5"
python3 profile.py --model=lenet5 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet18"
python3 profile.py --model=resnet18 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet34"
python3 profile.py --model=resnet34 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet50"
python3 profile.py --model=resnet50 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet50ImageNet"
python3 profile.py --model=resnet50ImageNet --batch-size=32 --batch-number=5 --am=1 --gpu=1

echo "OPT 1lut global"
make clean && make convam MULTIPLIER=FMBM16_MULTIPLIER OPT=3 && make denseam_gpu.so MULTIPLIER=FMBM16_MULTIPLIER OPT=3
echo "lenet31"
python3 profile.py --model=lenet31 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "lenet5"
python3 profile.py --model=lenet5 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet18"
python3 profile.py --model=resnet18 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet34"
python3 profile.py --model=resnet34 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet50"
python3 profile.py --model=resnet50 --batch-size=32 --batch-number=5 --am=1 --gpu=1
echo "resnet50ImageNet"
python3 profile.py --model=resnet50ImageNet --batch-size=32 --batch-number=5 --am=1 --gpu=1

#echo "NAVIE CPU ONLY"
#echo "lenet31"
#python3 profile.py --model=lenet31 --batch-size=32 --batch-number=5  --am=1 --gpu=0
#echo "lenet5"
#python3 profile.py --model=lenet5 --batch-size=32 --batch-number=5 --am=1 --gpu=0
#echo "resnet18"
#python3 profile.py --model=resnet18 --batch-size=32 --batch-number=5 --am=1 --gpu=0
#echo "resnet34"
#python3 profile.py --model=resnet34 --batch-size=32 --batch-number=5 --am=1 --gpu=0
#echo "resnet50"
#python3 profile.py --model=resnet50 --batch-size=32 --batch-number=5 --am=1 --gpu=0
#echo "resnet50ImageNet"
#python3 profile.py --model=resnet50ImageNet --batch-size=32 --batch-number=5 --am=1 --gpu=0 

echo "TF GPU"
echo "lenet31"
python3 profile.py --model=lenet31 --batch-size=32 --batch-number=5  --gpu=1
echo "lenet5"
python3 profile.py --model=lenet5 --batch-size=32 --batch-number=5  --gpu=1
echo "resnet18"
python3 profile.py --model=resnet18 --batch-size=32 --batch-number=5  --gpu=1
echo "resnet34"
python3 profile.py --model=resnet34 --batch-size=32 --batch-number=5  --gpu=1
echo "resnet50"
python3 profile.py --model=resnet50 --batch-size=32 --batch-number=5  --gpu=1
echo "resnet50ImageNet"
python3 profile.py --model=resnet50ImageNet --batch-size=32 --batch-number=5  --gpu=1

echo "TF CPU"
echo "lenet31"
python3 profile.py --model=lenet31 --batch-size=32 --batch-number=5  --gpu=0
echo "lenet5"
python3 profile.py --model=lenet5 --batch-size=32 --batch-number=5  --gpu=0
echo "resnet18"
python3 profile.py --model=resnet18 --batch-size=32 --batch-number=5  --gpu=0
echo "resnet34"
python3 profile.py --model=resnet34 --batch-size=32 --batch-number=5  --gpu=0
echo "resnet50"
python3 profile.py --model=resnet50 --batch-size=32 --batch-number=5  --gpu=0
echo "resnet50ImageNet"
python3 profile.py --model=resnet50ImageNet --batch-size=32 --batch-number=5  --gpu=0

