%% Earth gravitational parameter
mu = 3.986004418e14;     % m^3/s^2

%% Earth radius
R_earth = 6378e3;       % m

%% Orbit altitude (example: 400 km LEO)
h = 400e3;              % m

%% Initial orbital radius
r0_mag = R_earth + h;   % m

%% Initial position vector (circular orbit in x-direction)
r0 = [r0_mag; 0; 0];    % m

%% Circular orbit velocity magnitude
v0_mag = sqrt(mu / r0_mag);   % m/s

%% Initial velocity vector (perpendicular to r0)
v0 = [0; v0_mag; 0];    % m/s

%% Mass of earth
