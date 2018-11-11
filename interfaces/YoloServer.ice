//******************************************************************
// 
//  Generated by RoboCompDSL
//  
//  File name: YoloServer.ice
//  Source: YoloServer.idsl
//  
//****************************************************************** 
#ifndef ROBOCOMPYOLOSERVER_ICE
#define ROBOCOMPYOLOSERVER_ICE
module RoboCompYoloServer
{
	exception HardwareFailedException{ string what; };
	sequence <byte> ImgType;
	struct TImage
	{
		 int width;
		 int height;
		 int depth;
		 ImgType image;
	};
	struct Box
	{
		 string name;
		 int left;
		 int top;
		 int right;
		 int bot;
		 float prob;
	};
	sequence <Box> Objects;
	interface YoloServer
	{
		Objects processImage (TImage img) throws HardwareFailedException;
	};
};

#endif