#include <stdio.h>
#include <opencv2/opencv.hpp>

using namespace cv;

int main(int argc, char** argv )
{
    if ( argc != 3 )
    {
        printf("usage: ex1.out <Image_Path> <Channel (r,g or b)>\n");
        return -1;
    }

    Mat inImage;
    Mat outImage;
    inImage = imread( argv[1], IMREAD_COLOR );

    if ( !inImage.data )
    {
        printf("No image data \n");
        return -1;
    }

    int rows, cols,i,j,r=1,c;
    Size s = inImage.size();
    rows = s.height;
    cols = s.width;
    for (i = startrow; i <= startrow + rows; i++)
    {
        c = 1;
        for (j = startcol; j <= startcol + cols; j++)
        {
            outImage.at<uchar>(i, j) = image.at<uchar>(r, c)[0];
            c++;
        }
        r++;
    }

    int cn = image.channels();
    std::cout << cn;

    // namedWindow("Display Image", WINDOW_AUTOSIZE );
    // imshow("Display Image", image);
    // waitKey(0);


    return 0;
}