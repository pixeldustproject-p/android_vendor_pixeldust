package android
type Product_variables struct {
	Has_legacy_camera_hal1 struct {
		Cflags []string
	}

	Uses_media_extensions struct {
		Cflags []string
	}

	Needs_text_relocations struct {
		Cppflags []string
	}

	Mtk_hardware struct {
		Cflags []string
        }

	Target_process_sdk_version_override struct {
		Cppflags []string
	}

	Cant_reallocate_omx_buffers struct {
		Cflags []string
	}

	Qcom_bsp_legacy struct {
		Cflags []string
	}

	Qti_flac_decoder struct {
		Cflags []string
	}

	Uses_generic_camera_parameter_library struct {
		Srcs []string
	}

	Should_skip_waiting_for_qsee struct {
		Cflags []string
	}

	Supports_hw_fde struct {
		Cflags []string
		Header_libs []string
		Shared_libs []string
	}
	Supports_hw_fde_perf struct {
		Cflags []string
	}

	Supports_legacy_hw_fde struct {
		Cflags []string
	}

	Target_uses_qsml struct {
		Cflags []string
		Shared_libs []string
		Header_libs []string
		Required []string
	}

	Target_uses_eigen struct {
		Shared_libs []string
		Required []string
	}

	Target_shim_libs struct {
		Cppflags []string
	}

	Additional_gralloc_10_usage_bits struct {
		Cppflags []string
	}
}

type ProductVariables struct {
	Has_legacy_camera_hal1                *bool `json:",omitempty"`
	Uses_media_extensions                 *bool `json:",omitempty"`
	Uses_generic_camera_parameter_library *bool `json:",omitempty"`
	Specific_camera_parameter_library     *string `json:",omitempty"`
	Needs_text_relocations                *bool `json:",omitempty"`
	Mtk_hardware                          *bool `json:",omitempty"`
	QTIAudioPath                          *string `json:",omitempty"`
	QTIDisplayPath                        *string `json:",omitempty"`
	QTIMediaPath                          *string `json:",omitempty"`
	Cant_reallocate_omx_buffers           *bool `json:",omitempty"`
	Qcom_bsp_legacy                       *bool `json:",omitempty"`
	Qti_flac_decoder                      *bool `json:",omitempty"`
	Should_skip_waiting_for_qsee          *bool `json:",omitempty"`
	Supports_hw_fde                       *bool `json:",omitempty"`
	Supports_hw_fde_perf                  *bool `json:",omitempty"`
	Supports_legacy_hw_fde                *bool `json:",omitempty"`
	Target_uses_qsml                      *bool `json:",omitempty"`
	Target_uses_eigen                     *bool `json:",omitempty"`
	Target_use_sdclang                    *bool `json:",omitempty"`
	Target_shim_libs                      *string `json:",omitempty"`
	Additional_gralloc_10_usage_bits      *string `json:",omitempty"`
	Target_process_sdk_version_override   *string `json:",omitempty"`
}
