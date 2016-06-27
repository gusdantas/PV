// Code to:
// Read an image.
// Show in the window.
// Save as new image.

// To run type on terminal: 
// "sudo cmake ." (to build CMake Files)
// "make" (to build the application)
// "./DisplayImage" (to execute the application)

// Remenber to: 
// Use terminal like super user (sudo su)
// If find an error to acess CMakeFile type "sudo chmod 777 -R CMakeFiles" (to get permissions to read the folder)

#include <opencv2/core/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <vector>
#include <cstddef>

using namespace cv;
using namespace std;



/*Mat media(int aresta, Mat input){

	Mat output = input;
	int linha = input.rows;
	int coluna = input.cols;
	vector< vector<int> > janela;
	// Set up sizes. (HEIGHT x WIDTH)
	janela.resize(aresta);
	for (int i=0; i < aresta; i++){
		janela[i].resize(aresta);
	}

	for (int i=0; i<linha; i++){
		for (int j=0; j<coluna; j++){
			int somaJanela = 0;
			int outputValue = 0;

			for (int x=-aresta/2; x==aresta/2; x++){
				for (int y=-aresta/2; y==aresta/2; y++){
					if (input.at<int>(Point(i+x,j+y)) == ptr){
						janela[x][y] = 0;
					}else{
						janela[x][y] = input.at<int>(Point(i+x,j+y));
						somaJanela += janela[x][y];
					}
				}
			}
			outputValue = somaJanela/(aresta^2);
			output.at<int>(Point(i,j)) = outputValue;
		}
	}



	/*for (int i=0; i<linha; i++){
		for (int j=0; j<coluna; j++){
			if (point[0] == 0){
				if (point[1] == 0) {
					a = input.at<int>(Point(i,j));
					b = input.at<int>(Point(i,j+1));
					c = input.at<int>(Point(i+1,j));
					d = input.at<int>(Point(i+1,j+1));
					output.at<int>(Point(i,j)) = (a+b+c+d)/4;
				}else if (point[1]>0 && point[1]<(coluna-1)){
					a = input.at<int>(Point(i,j-1));
					b = input.at<int>(Point(i,j));
					c = input.at<int>(Point(i,j+1));
					d = input.at<int>(Point(i+1,j-1));
					e = input.at<int>(Point(i+1,j));
					f = input.at<int>(Point(i+1,j+1));
					output.at<int>(Point(i,j)) = (a+b+c+d+e+f)/6;
				}else{
					a = input.at<int>(Point(i,j-1));
					b = input.at<int>(Point(i,j));
					c = input.at<int>(Point(i+1,j-1));
					d = input.at<int>(Point(i+1,j));
					output.at<int>(Point(i,j)) = (a+b+c+d)/4;
				}
			}else if (point[0]>0 && point[0]<(linha-1)){
				if (point[1] == 0) {
					a = input.at<int>(Point(i-1,j));
					b = input.at<int>(Point(i-1,j+1));
					c = input.at<int>(Point(i,j));
					d = input.at<int>(Point(i,j+1));
					e = input.at<int>(Point(i+1,j));
					f = input.at<int>(Point(i+1,j+1));
					output.at<int>(Point(i,j)) = (a+b+c+d+e+f)/6;
				}else if (point[1]>0 && point[1]<(coluna-1)){
					a = input.at<int>(Point(i-1,j-1));
					b = input.at<int>(Point(i-1,j));
					c = input.at<int>(Point(i-1,j+1));
					d = input.at<int>(Point(i,j-1));
					e = input.at<int>(Point(i,j));
					f = input.at<int>(Point(i,j+1));
					g = input.at<int>(Point(i+1,j-1));
					h = input.at<int>(Point(i+1,j));
					i = input.at<int>(Point(i+1,j+1));
					output.at<int>(Point(i,j)) = (a+b+c+d+e+f+g+h+i)/9;
				}else{
					a = input.at<int>(Point(i-1,j-1));
					b = input.at<int>(Point(i-1,j));
					c = input.at<int>(Point(i,j-1));
					d = input.at<int>(Point(i,j));
					e = input.at<int>(Point(i+1,j-1));
					f = input.at<int>(Point(i+1,j));
					output.at<int>(Point(i,j)) = (a+b+c+d+e+f)/4;
				}
			}else{
				if (point[1] == 0) {
					a = input.at<int>(Point(i-1,j));
					b = input.at<int>(Point(i-1,j+1));
					c = input.at<int>(Point(i,j));
					d = input.at<int>(Point(i,j+1));
					output.at<int>(Point(i,j)) = (a+b+c+d)/4;
				}else if (point[1]>0 && point[1]<(coluna-1)){
					int a = input.at<int>(Point(i-1,j-1));
					int b = input.at<int>(Point(i-1,j));
					int c = input.at<int>(Point(i-1,j+1));
					int d = input.at<int>(Point(i,j-1));
					int e = input.at<int>(Point(i,j));
					int f = input.at<int>(Point(i,j+1));
					output.at<int>(Point(i,j)) = (a+b+c+d+e+f)/6;
				}else{
					int a = input.at<int>(Point(i-1,j-1));
					int b = input.at<int>(Point(i-1,j));
					int c = input.at<int>(Point(i,j-1));
					int d = input.at<int>(Point(i,j));
					output.at<int>(Point(i,j)) = (a+b+c+d)/4;
				}
			}
		}
	}
	return output;
}*/

int main()
{

    Mat image, newImage; // mat to storage image.
    image = imread( "lenna512.png", 1 ); //Load the image.
    newImage = image;

    if( image.empty() ) // Check for invalid input.
    {
        cout <<  "Could not open or find the image" << std::endl ;
        return -1;
    }

    namedWindow( "Read, Show and Save Image - window", WINDOW_AUTOSIZE ); // Create a window for display.
    imshow( "Read, Show and Save Image - window", image );

    //cout << "R (default) = " << endl <<        image           << endl << endl;

	Mat output = image;
	int aresta = 3;
	int linha = image.rows;
	int coluna = image.cols;
	vector< vector<int> > janela;
	// Set up sizes. (HEIGHT x WIDTH)
	janela.resize(aresta);
	for (int i=0; i < aresta; i++){
		janela[i].resize(aresta);
	}

	for (int i=0; i<linha; i++){
		for (int j=0; j<coluna; j++){
			int somaJanela = 0;
			int outputValue = 0;

			for (int x=-aresta/2; x==aresta/2; x++){
				for (int y=-aresta/2; y==aresta/2; y++){
					//if (image.at<int>(Point(i+x,j+y)) == ptr){
					//	janela[x][y] = 0;
					//}else{
						janela[x][y] = image.at<int>(Point(i+x,j+y));
						//somaJanela += janela[x][y];
					//}
				}
			}
			//outputValue = somaJanela/(aresta^2);
			//output.at<int>(Point(i,j)) = outputValue;
		}
	}

    //newImage = media(3,image);

    namedWindow( "New Image", WINDOW_AUTOSIZE ); // Create a window for display.
    imshow( "New Image", newImage );

    imwrite( "novaLena.jpg", image );              // save your image with another name.

    waitKey(0); // Wait for a keystroke in the window, Esc for exit.
    return 0;
}


