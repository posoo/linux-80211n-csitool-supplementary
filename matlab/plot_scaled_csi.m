function plot_csi(filename)
%PLOT_SCALED_CSI Summary of this function goes here
%   Detailed explanation goes here
    csi_data = load_scaled_csi(filename);
    len = length(csi_data);
    csi_energe = zeros(len, 3);
    for i = 1:len
        for j = 1:3
            csi_energe(i, j) = mean(abs(csi_data(i, j, :)), 'all');
        end
    end
    plot(csi_energe);
    legend('RX Antenna A', 'RX Antenna B', 'RX Antenna C', 'Location', 'SouthEast' ); 
    title(filename);
end

