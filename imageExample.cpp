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
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <vector>
#include <cstddef>

using namespace cv;
using namespace std;

Mat media(int aresta, Mat input){

	Mat output = input;
	int meio = aresta/2;
	int linha = input.rows;
	int coluna = input.cols;
	vector< vector<int> > janela;
	//vector<int> vetorMediana;
	//vetorMediana.resize(aresta*aresta);

	janela.resize(aresta);
	for (int i=0; i < aresta; i++){
		janela[i].resize(aresta);
	}

	for (int i=0; i<linha; i++){
		for (int j=0; j<coluna; j++){

			int posMediana = 0;
			int somaJanela = 0;
			int ij = 0;

			for (int x=-meio; x<meio+1; x++){
				int jj = 0;
				for (int y=-meio; y<meio+1; y++){
					
					if (i+x < 0 || i+x >= linha || j+y < 0 || j+y >= coluna){
						janela[ij][jj] = 0;
					}else {
						janela[ij][jj] = input.at<uchar>(Point(i+x,j+y));
						somaJanela += janela[ij][jj];
					}
					//vetorMediana[posMediana] = janela[ij][jj];
					//posMediana++;
					jj++;
				}
				ij++;
			}
			/*sort(vetorMediana.begin(),vetorMediana.end());
			int outputMediana = vetorMediana[meio+1];
			for (int v=0;v!=(aresta*aresta);v++){
				cout << vetorMediana[v]<< " ";
			}
			cout<< "=> "<<outputMediana<<endl;*/
			int outputMedia = somaJanela/(aresta*aresta);
			output.at<uchar>(Point(i,j)) = outputMedia;
		}
	}
	return output;
}

int main()
{

    Mat image, newImage; // mat to storage image.
    image = imread( "lenna512.png", 0 ); //Load the image.
    newImage = image;

    if( image.empty() ) // Check for invalid input.
    {
        cout <<  "Could not open or find the image" << std::endl ;
        return -1;
    }

    namedWindow( "Read, Show and Save Image - window", WINDOW_AUTOSIZE ); // Create a window for display.
    imshow( "Read, Show and Save Image - window", image );

	Mat blurred = image;	
	//blur(image,blurred,Size(7,7));
	medianBlur(image,blurred,7);
	namedWindow( "OPENCV", WINDOW_AUTOSIZE ); // Create a window for display.
    imshow( "OPENCV", blurred );
    imwrite( "opencv.jpg", blurred ); // save your image with another name.

    //newImage = media(7,image);
    //namedWindow( "MEU", WINDOW_AUTOSIZE ); // Create a window for display.
    //imshow( "MEU", newImage );
    //imwrite( "meu.jpg", newImage ); // save your image with another name.

    //imwrite( "novaLena.jpg", image ); // save your image with another name.

    waitKey(0); // Wait for a keystroke in the window, Esc for exit.
    return 0;
}

