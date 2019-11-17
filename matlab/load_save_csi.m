function load_save_csi(dat_path, outpath)
    csi_data = load_scaled_csi_reshaped(dat_path);    % N*90
    save(outpath, 'csi_data');
end

