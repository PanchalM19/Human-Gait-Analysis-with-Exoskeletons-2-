# Human-Gait-Analysis-with-Exoskeletons-2-

## 2. Prosthesis Mid-level Control

### Overview
This project focuses on the development and optimization of mid-level control strategies for knee and ankle prostheses, simulating an impedance-based finite state machine controller. The goal is to enhance the functionality of prosthetic limbs by emulating natural gait patterns through adaptive impedance controllers. The project comprises various stages, including the creation of finite state machines, development of ankle and knee impedance controllers, optimization of impedance parameters, and the implementation of a high-level classifier for different walking modes.

### Key Achievements and Steps
1. Finite State Machine Development
1a. Created a finite state machine representing gait states for the right leg.
1b. Plotted gait state, ankle angle, knee angle, and vertical force to identify transition criteria.
1c. Developed an ankle impedance controller to emulate biological ankle torque.
1d. Verified the accuracy of the ankle impedance controller using RMSe & R-squared with biological ankle moments.

 <img width="347" alt="image" src="https://github.com/PanchalM19/Human-Gait-Analysis-with-Exoskeletons-2-/assets/115374409/b25e2bfe-511f-402f-85b2-7dbc17707b07">

2. Knee Impedance Controller
Repeated steps 1c & 1d for the knee to develop and verify a knee impedance controller.

<img width="300" alt="image" src="https://github.com/PanchalM19/Human-Gait-Analysis-with-Exoskeletons-2-/assets/115374409/f82a4b29-bece-4204-95d0-811295652f0f">


3. Impedance Parameter Optimization
3a. Optimized impedance parameters for both ankle and knee controllers to minimize the error between actuator torque and biological moment.
3b. Explored the impact of impedance parameters on different gait modes, revealing the challenge of generalizing parameters across modes.

<img width="310" alt="image" src="https://github.com/PanchalM19/Human-Gait-Analysis-with-Exoskeletons-2-/assets/115374409/989cf514-f553-43bf-bd1a-b6165862fb21">


4. High-Level Classifier
4a. Developed a classifier to identify walking modes based on ground angle just before heel strike, adjusting early stance impedance parameters.
4b. Explored the use of a window of data preceding heel strike (100 samples) to improve classifier performance.

<img width="614" alt="image" src="https://github.com/PanchalM19/Human-Gait-Analysis-with-Exoskeletons-2-/assets/115374409/1623234a-fd7d-45f5-8a39-b02b673545fc">


### Significance and Future Directions
The project lays the foundation for enhancing prosthetic limb control through mid-level impedance strategies, improving adaptability across various walking modes. Future work may involve real-time implementation on prosthetic devices, incorporating participant-specific adjustments, and exploring additional features for high-level classifiers.

Note: The project's insights are derived from data collected from a non-amputee, with the intention that the findings could be applicable to prosthetic limbs, assuming similar behavior during swing.

## Please refer the below repositories for related projects:
* Human-Gait-Analysis-with-Exoskeletons-1- : For "Measurement & Analysis of Gait"
* Human-Gait-Analysis-with-Exoskeletons-3- : For "Phase-Based Exoskeleton Control"
