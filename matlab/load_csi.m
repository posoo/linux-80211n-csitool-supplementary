function csi = load_csi(file_name)
    csi_trace = read_bf_file(file_name);
    len = length(csi_trace);
    csi = zeros(len,3, 30);
    for m = 1:len
        csi_entry = csi_trace{m}.csi;
        csi(m, :, :) = reshape(csi_entry, 3, 30);
    end
end