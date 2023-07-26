# Control-Theory
 Control system exercises and projects

### Theory of Pole Placement:

Pole placement is a control technique used to design a feedback controller for a linear time-invariant (LTI) system to achieve specific performance and stability characteristics. The goal is to determine appropriate feedback gains in order to place the closed-loop poles of the system at desired locations in the complex plane. The placement of poles directly affects the system's transient response and stability.

***Closed-loop poles:***
The poles of the closed-loop system are the eigenvalues of the matrix Acl, which is obtained by subtracting the product of the state matrix A and the feedback gain matrix K from the original state matrix A.

***Stability:***
In control systems, stability is a crucial property. A system is stable if all the eigenvalues (poles) of the closed-loop system have negative real parts. This is known as "asymptotic stability," meaning the system's response settles down to the desired state with time.

***Desired Pole Locations:***
The desired pole locations are specified based on the desired closed-loop behavior of the system. These locations are usually chosen to achieve specific characteristics, such as settling time, overshoot, or damping ratio. For instance, if faster response is required, the poles are placed farther to the left in the complex plane, which corresponds to a higher natural frequency.
![image](https://github.com/Nooney27/Control-Theory/assets/114221233/77c4ed7d-0823-4e52-b2c4-f3d7c10971b1)
