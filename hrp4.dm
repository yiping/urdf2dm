# DynaMechs V 4.0 ascii

Articulation {
	Name	"Articulation"
	Graphics_Model		""
	Position			0	0	0
	Orientation_Quat	0	0	0	1


	MobileBaseLink {
	    Name    "body"
	    Graphics_Model    "dummy.xan"
	    Mass    6.93472
	    Inertia     0.19586989 0.00029148 0.02258825 
		        0.00029148 0.16983881 -0.00218507 
		        0.02258825 -0.00218507 0.05851586
	    Center_of_Gravity    -0.02156090 0.00145914 0.14111505
	    Number_of_Contact_Points	0
	    Position	2.000000	2.000000	0.980000	
	    Orientation_Quat	0.000000	0.000000	0	1
	    Velocity 0 0 0 0 0 0
	}

	# # Lower body
	Branch {

		ZScrewTxLink {
			Name	"ZScrew_body"
			ZScrew_Parameters	0.000000	1.570796
		}
		
		# # # Right leg
		Branch {
			RevoluteLink {
				Name    "R_HIP_Y_LINK"
				Graphics_Model    "dummy.xan"
				Mass    1.1356
				Inertia     0.00545988 0.00000028 -0.00000000 
						    0.00000028 0.00434645 -0.00045994 
						    -0.00000000 -0.00045994 0.00181233
				Center_of_Gravity    0.00000002 0.01667657 0.04993135
				Number_of_Contact_Points	0
				MDH_Parameters     -0.0875    0    0    0  
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}


			RevoluteLink {
				Name    "R_HIP_R_LINK"
				Graphics_Model    "dummy.xan"
				Mass    0.58494148
				Inertia     0.00030910 0.00000421 -0.00000005 
						    0.00000421 0.00064925 -0.00000197 
						    -0.00000005 -0.00000197 0.00048563
				Center_of_Gravity    0.00595121 -0.00052352 -0.00431692
				Number_of_Contact_Points	0
				MDH_Parameters	 0.0    1.570796    0.0    0.0
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}

			ZScrewTxLink {
				Name	"ZScrew_R_HIP_R"
				ZScrew_Parameters	0.000000	1.570796
			}


			RevoluteLink {
				Name    "R_HIP_P_LINK"
				Graphics_Model    "dummy.xan"
				Mass    2.0648
				Inertia     0.00327334 0.00220212 0.00729626 
						    0.00220212 0.10546825 -0.00013021 
						    0.00729626 -0.00013021 0.10411604
				Center_of_Gravity    -0.18851723 0.00401404 0.01530275
				Number_of_Contact_Points	0
				MDH_Parameters	  0.0    1.570796    0.0    0.0
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}


			RevoluteLink {
				Name    "R_KNEE_P_LINK"
				Graphics_Model    "dummy.xan"
				Mass    2.08123
				Inertia     0.00216237 -0.00502102 -0.00040435 
						    -0.00502102 0.06742795 -0.00003597 
						    -0.00040435 -0.00003597 0.06812284
				Center_of_Gravity    -0.15252868 -0.01122115 -0.00133701
				Number_of_Contact_Points	0
				MDH_Parameters	   -0.358   0.0   0.01905   0.0 
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}


			RevoluteLink {
				Name    "R_ANKLE_P_LINK"
				Graphics_Model    "dummy.xan"
				Mass    0.26784726
				Inertia     0.00017678 -0.00000005 -0.00000001 
						    -0.00000005 0.00008140 -0.00000032 
						    -0.00000001 -0.00000032 0.00015932
				Center_of_Gravity    0.00129883 -0.00368911 -0.00015844
				Number_of_Contact_Points	0
				MDH_Parameters	   -0.341150992963526   0.0   0.0   0.0
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}


			RevoluteLink {
				Name    "R_ANKLE_R_LINK"
				Graphics_Model    "dummy.xan"
			#    Mass    0.72287828
			#    Inertia     0.00255531 -0.00000000 0.00000000 
			#                -0.00000000 0.00090154 -0.00000652 
			#                0.00000000 -0.00000652 0.00244617
			#    Center_of_Gravity    0.00000001 0.04591586 -0.00340792

				Mass     1.30119381

			        Inertia     0.00471443 0.00065032 0.00067728 
				            0.00065032 0.00967019 -0.00010162 
					    0.00067728 -0.00010162 0.00823080

			        Center_of_Gravity    -0.06047976 0.00506513 0.00313025

				Number_of_Contact_Points	4
				Contact_Locations       -0.0930   -0.0580    0.1270
							   -0.0930   -0.0580   -0.0970
							   -0.0930    0.0380   -0.0970
							   -0.0930    0.0380    0.1270

				MDH_Parameters	   0.0   -1.570796    0.0    0.0
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}
		}

		# # # Left leg
		Branch {

			RevoluteLink {
				Name    "L_HIP_Y_LINK"
				Graphics_Model    "dummy.xan"
				Mass    1.1356
				Inertia     0.00545988 0.00000028 -0.00000000 
						    0.00000028 0.00434645 -0.00045994 
						    -0.00000000 -0.00045994 0.00181233

				Center_of_Gravity    0.00000002 0.01667657 0.04993135

				Number_of_Contact_Points	0
				MDH_Parameters	    0.0875    0    0    0
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}


			RevoluteLink {
				Name    "L_HIP_R_LINK"
				Graphics_Model    "dummy.xan"
				Mass    0.58494148
				Inertia     0.00030910 0.00000421 -0.00000005 
						    0.00000421 0.00064925 -0.00000197 
						    -0.00000005 -0.00000197 0.00048563

				Center_of_Gravity    0.00595121 -0.00052352 -0.00431692

				Number_of_Contact_Points	0
				MDH_Parameters	     0.0    1.570796    0.0    0.0
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}

			ZScrewTxLink {
				Name	"ZScrew_L_HIP_R"
				ZScrew_Parameters	0.000000	1.570796
			}


			RevoluteLink {
				Name    "L_HIP_P_LINK"
				Graphics_Model    "dummy.xan"
				Mass    2.06366
				Inertia     0.00300919 0.00219676 -0.00464629 
						    0.00219676 0.10495691 0.00014265 
						    -0.00464629 0.00014265 0.10387196

				Center_of_Gravity    -0.18827632 0.00400906 -0.00541624

				Number_of_Contact_Points	0
				MDH_Parameters	   0.0    1.570796    0.0    0.0
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}


			RevoluteLink {
				Name    "L_KNEE_P_LINK"
				Graphics_Model    "dummy.xan"
				Mass    2.08123

				Inertia     0.00216237 -0.00502102 -0.00040435 
						    -0.00502102 0.06742795 -0.00003597 
						    -0.00040435 -0.00003597 0.06812284

				Center_of_Gravity    -0.15252868 -0.01122115 -0.00133701

				Number_of_Contact_Points	0
				MDH_Parameters	   -0.358   0.0   -0.01905   0.0
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}


			RevoluteLink {
				Name    "L_ANKLE_P_LINK"
				Graphics_Model    "dummy.xan"
				Mass    0.26784726
				Inertia     0.00017678 -0.00000005 -0.00000001 
						    -0.00000005 0.00008140 -0.00000032 
						    -0.00000001 -0.00000032 0.00015932

				Center_of_Gravity    0.00129883 -0.00368911 -0.00015844

				Number_of_Contact_Points	0
				MDH_Parameters	     -0.341150992963526   0.0   0.0   0.0
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}


			RevoluteLink {
				Name    "L_ANKLE_R_LINK"
				Graphics_Model    "dummy.xan"
			#    Mass    0.72287828
			#    Inertia     0.00255531 0.00000000 0.00000000 
			#                0.00000000 0.00090154 -0.00000652 
			#                0.00000000 -0.00000652 0.00244617
			#
			#    Center_of_Gravity    0.00000000 0.04591586 -0.00340792

				Mass    1.30119381 

				Inertia     0.00471443 -0.00065032 0.00067728 
					-0.00065032 0.00967019 0.00010162 
					0.00067728 0.00010162 0.00823080

				Center_of_Gravity    -0.06047976 -0.00506513 0.00313025

				Number_of_Contact_Points	4
				Contact_Locations       -0.0930   -0.0580    0.1270
							   -0.0930   -0.0580   -0.0970
							   -0.0930    0.0380   -0.0970
							   -0.0930    0.0380    0.1270
				MDH_Parameters	   0.0   -1.570796    0.0    0.0
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}

		}
	}

	# # Upper body
	Branch {
		ZScrewTxLink {
			Name	"ZScrew_body_2"
			ZScrew_Parameters	0.197	0.0
		}
		RevoluteLink {
			Name    "CHEST_P_LINK"
			Graphics_Model    "dummy.xan"
			Mass    1.24072

			Inertia     0.00417850 -0.00018112 -0.00000033 
				        -0.00018112 0.00158011 -0.00000421 
				        -0.00000033 -0.00000421 0.00435155

			Center_of_Gravity    -0.00442006 -0.03664874 0.00280574

			Number_of_Contact_Points	0
			MDH_Parameters	  0.01   -1.570796   0.0   0.0   
			Initial_Joint_Velocity	0
			Joint_Limits	0	0
			Joint_Limit_Spring_Constant	0
			Joint_Limit_Damper_Constant	0
			Actuator_Type	0
			Joint_Friction	0
		}


		RevoluteLink {
			Name    "torso"
			Graphics_Model    "dummy.xan"
			Mass    6.67348
			Inertia     0.34434567 -0.00056770 0.04504856 
				        -0.00056770 0.33832480 0.00317298 
				        0.04504856 0.00317298 0.04816021

			Center_of_Gravity    -0.02868847 -0.00245957 0.20400698

			Number_of_Contact_Points	0
			MDH_Parameters	  0.0   1.570796   0.0   0.0
			Initial_Joint_Velocity	0
			Joint_Limits	0	0
			Joint_Limit_Spring_Constant	0
			Joint_Limit_Damper_Constant	0
			Actuator_Type	0
			Joint_Friction	0
		}

		# # # Head 
		Branch {
			RevoluteLink {
				Name    "NECK_Y_LINK"
				Graphics_Model    "dummy.xan"
				Mass    0.41214752
				Inertia     0.00079901 0.00001177 -0.00002723 
						    0.00001177 0.00093082 0.00000002 
						    -0.00002723 0.00000002 0.00046068

				Center_of_Gravity    -0.01142441 0.00157484 -0.02134892

				Number_of_Contact_Points	0
				MDH_Parameters	    -0.04  0.0    0.434   0.0
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}


			RevoluteLink {
				Name    "NECK_P_LINK"
				Graphics_Model    "dummy.xan"
				Mass    0.22297511
				Inertia     0.00076871 -0.00001228 -0.00000007 
						    -0.00001228 0.00100981 -0.00000058 
						    -0.00000007 -0.00000058 0.00100900

				Center_of_Gravity    0.00532833 -0.01769360 -0.00053047

				Number_of_Contact_Points	0
				MDH_Parameters	 0.0   -1.570796   0.0   0.0
				Initial_Joint_Velocity	0
				Joint_Limits	0	0
				Joint_Limit_Spring_Constant	0
				Joint_Limit_Damper_Constant	0
				Actuator_Type	0
				Joint_Friction	0
			}
		}


		# # # Arms
 
		Branch {
			ZScrewTxLink {
				Name	"ZScrew_torso"
				ZScrew_Parameters	0.285	0.0
			}

			# # # # Right Arm
			Branch {
				RevoluteLink {
					Name    "R_SHOULDER_P_LINK"
					Graphics_Model    "dummy.xan"
					Mass    0.42049079
					Inertia     0.00120429 0.00000080 -0.00003028 
								0.00000080 0.00120808 0.00000898 
								-0.00003028 0.00000898 0.00014269

					Center_of_Gravity    0.00141599 -0.00031503 0.04257567

					Number_of_Contact_Points	0
					MDH_Parameters	  -0.04   -1.570796   -0.17  0.3
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}

				ZScrewTxLink {
					Name	"ZScrew_R_SHOULDER_P"
					ZScrew_Parameters	0.0	1.570796
				}


				RevoluteLink {
					Name    "R_SHOULDER_R_LINK"
					Graphics_Model    "dummy.xan"
					Mass    0.52070922
					Inertia     0.00030245 0.00004130 0.00006045 
								0.00004130 0.00163280 -0.00000702 
								0.00006045 -0.00000702 0.00154500

					Center_of_Gravity    0.04191141 -0.00272557 0.00019752

					Number_of_Contact_Points	0
					MDH_Parameters	0.0  1.570796  0.0  0.0
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}

				ZScrewTxLink {
					Name	"ZScrew_R_SHOULDER_R"
					ZScrew_Parameters	0.0	-1.570796
				}

				RevoluteLink {
					Name    "R_SHOULDER_Y_LINK"
					Graphics_Model    "dummy.xan"
					Mass    1.0874
					Inertia     0.03859340 -0.00001072 0.00016252 
								-0.00001072 0.03856011 -0.00056191 
								0.00016252 -0.00056191 0.00072671

					Center_of_Gravity    0.00036268 -0.00273859 -0.17426645

					Number_of_Contact_Points	0
					MDH_Parameters	  0.0  1.570796  0.0  0.0
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}

				ZScrewTxLink {
					Name	"ZScrew_R_SHOULDER_Y"
					ZScrew_Parameters	 -0.283	1.570796
				}

				RevoluteLink {
					Name    "R_ELBOW_P_LINK"
					Graphics_Model    "dummy.xan"
					Mass    0.6594031
					Inertia     0.00470668 0.00054381 0.00000787 
								0.00054381 0.00056905 -0.00000867 
								0.00000787 -0.00000867 0.00494108

					Center_of_Gravity    -0.01222096 0.07271909 0.00049299

					Number_of_Contact_Points	0
					MDH_Parameters	   0.0   -1.570796  0.0  0.0
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}

				RevoluteLink {
					Name    "R_WRIST_Y_LINK"
					Graphics_Model    "dummy.xan"
					Mass    0.38384092
					Inertia     0.01142110 -0.00000947 -0.00047964 
								-0.00000947 0.01144556 0.00002361 
								-0.00047964 0.00002361 0.00024503

					Center_of_Gravity    -0.00749481 0.00009419 -0.17044123

					Number_of_Contact_Points	0
					MDH_Parameters	     0.0    1.570796  0.0  0.0
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}

				ZScrewTxLink {
					Name	"ZScrew_R_WRIST_Y"
					ZScrew_Parameters	 -0.234	0.0
				}

				RevoluteLink {
					Name    "R_WRIST_P_LINK"
					Graphics_Model    "dummy.xan"
					Mass    0.25425855
					Inertia     0.00011766 0.00001045 0.00000048 
								0.00001045 0.00005803 -0.00000005 
								0.00000048 -0.00000005 0.00012261

					Center_of_Gravity    0.00255098 -0.01074678 0.00162183


					Number_of_Contact_Points	0
					MDH_Parameters	   0.0   -1.570796  0.0  0.0
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}

				ZScrewTxLink {
					Name	"ZScrew_R_WRIST_P"
					ZScrew_Parameters	 0.0	1.570796
				}

				RevoluteLink {
					Name    "r_wrist"
					Graphics_Model    "dummy.xan"
					Mass    0.38811052
					Inertia     0.00025220 0.00026369 0.00013566 
								0.00026369 0.00275729 -0.00001306 
								0.00013566 -0.00001306 0.00265925

					Center_of_Gravity    0.07562434 -0.00756083 -0.00357307

					Number_of_Contact_Points	0
					MDH_Parameters	 0.0   1.570796  0.0  0.0
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}
			}


			# # # # Left Arm
			Branch {

				RevoluteLink {
					Name    "L_SHOULDER_P_LINK"
					Graphics_Model    "dummy.xan"
					Mass    0.42049079
					Inertia     0.00120429 -0.00000080 0.00003028 
								-0.00000080 0.00120808 0.00000898 
								0.00003028 0.00000898 0.00014269

					Center_of_Gravity    0.00141599 0.00031503 -0.04257567

					Number_of_Contact_Points	0
					MDH_Parameters	-0.04   -1.570796   0.17  -0.2
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}

				ZScrewTxLink {
					Name	"ZScrew_L_SHOULDER_P"
					ZScrew_Parameters	0.0	1.570796
				}

				RevoluteLink {
					Name    "L_SHOULDER_R_LINK"
					Graphics_Model    "dummy.xan"
					Mass    0.52070922

					Inertia     0.00030244 0.00003090 0.00006045 
								0.00003090 0.00163280 -0.00000600 
								0.00006045 -0.00000600 0.00154499

					Center_of_Gravity    0.04191141 -0.00008916 0.00019752

					Number_of_Contact_Points	0
					MDH_Parameters	0.0  1.570796  0.0  0.0
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}

				ZScrewTxLink {
					Name	"ZScrew_L_SHOULDER_R"
					ZScrew_Parameters	0.0	-1.570796
				}


				RevoluteLink {
					Name    "L_SHOULDER_Y_LINK"
					Graphics_Model    "dummy.xan"
					Mass    1.0874
					Inertia     0.03859340 -0.00001072 0.00016252 
								-0.00001072 0.03856011 -0.00056191 
								0.00016252 -0.00056191 0.00072671

					Center_of_Gravity    0.00036268 -0.00273859 -0.17426645

					Number_of_Contact_Points	0
					MDH_Parameters	  0.0  1.570796  0.0  0.0
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}

				ZScrewTxLink {
					Name	"ZScrew_L_SHOULDER_Y"
					ZScrew_Parameters	 -0.283	1.570796
				}

				RevoluteLink {
					Name    "L_ELBOW_P_LINK"
					Graphics_Model    "dummy.xan"
					Mass    0.6594031
					Inertia     0.00470668 0.00054381 0.00000787 
								0.00054381 0.00056905 -0.00000867 
								0.00000787 -0.00000867 0.00494108

					Center_of_Gravity    -0.01222096 0.07271909 0.00049299

					Number_of_Contact_Points	0
					MDH_Parameters	0.0   -1.570796  0.0  0.0
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}


				RevoluteLink {
					Name    "L_WRIST_Y_LINK"
					Graphics_Model    "dummy.xan"
					Mass    0.38384092

					Inertia     0.01142110 0.00000949 -0.00047969 
								0.00000949 0.01144557 -0.00002361 
								-0.00047969 -0.00002361 0.00024503

					Center_of_Gravity    -0.00749574 -0.00009418 -0.17044123

					Number_of_Contact_Points	0
					MDH_Parameters	0.0    1.570796  0.0  0.0
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}

				ZScrewTxLink {
					Name	"ZScrew_L_WRIST_Y"
					ZScrew_Parameters	 -0.234	0.0
				}

				RevoluteLink {
					Name    "L_WRIST_P_LINK"
					Graphics_Model    "dummy.xan"
					Mass    0.25425855
					Inertia     0.00011766 -0.00001045 0.00000048 
								-0.00001045 0.00005803 0.00000005 
								0.00000048 0.00000005 0.00012261

					Center_of_Gravity    -0.00255098 -0.01074678 -0.00162183

					Number_of_Contact_Points	0
					MDH_Parameters	0.0   -1.570796  0.0  0.0
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}

				ZScrewTxLink {
					Name	"ZScrew_L_WRIST_P"
					ZScrew_Parameters	 0.0	1.570796
				}

				RevoluteLink {
					Name    "l_wrist"
					Graphics_Model    "dummy.xan"
					Mass    0.38811052

					Inertia     0.00025237 -0.00026366 0.00013510 
								-0.00026366 0.00275750 0.00001181 
								0.00013510 0.00001181 0.00265927

					Center_of_Gravity    0.07562466 0.00756006 -0.00241915

					Number_of_Contact_Points	0
					MDH_Parameters	0.0   1.570796  0.0  0.0
					Initial_Joint_Velocity	0
					Joint_Limits	0	0
					Joint_Limit_Spring_Constant	0
					Joint_Limit_Damper_Constant	0
					Actuator_Type	0
					Joint_Friction	0
				}
			}
		}
	}

}
