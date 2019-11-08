function plot_rssi(filename)
%PLOT_CSI Summary of this function goes here
%   Detailed explanation goes here
    rssi_data = load_rssi(filename);
    plot(rssi_data);
    legend('RX Antenna A', 'RX Antenna B', 'RX Antenna C', 'Location', 'SouthEast' ); 
    title(["RSSI:", filename]);
end

