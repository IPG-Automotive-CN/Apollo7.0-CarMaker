本工程基于Apollo7.0修改，为了能够和CarMaker联调,

通用步骤
<!-- 1、cd path/to/apollo 
2、./docker/scripts/dev_start.sh
3、./docker/scripts/dev_info.sh
4、bootstrap.sh -->
5、bridge.sh
6、打开dreamview(默认localhost:8888),SetMode选择CarMaker, 地图选择Los Angeles, 打开需要的模块(Control、Prediction、Planning等)

当前工程默认支持和CarMaker的lidarRSI、CameraRSI联仿真，如果需要切换Radar需要修改fusion_component_conf.pb.txt的fusion_main_sensor字段




