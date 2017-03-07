# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.enable_gl_backpressure=1 \
    debug.sf.hw=1 \
    persist.hwc.mdpcomp.enable=true \
    debug.hwui.use_buffer_age=false

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.am.reschedule_service=true \
    ro.vendor.qti.sys.fw.bservice_enable=true

# Thermal
PRODUCT_PROPERTY_OVERRIDES += \
    persist.thermal.monitor=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0

# Surfaceflinger
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3

# Timeout failed shutdowns
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.shutdown_timeout=3

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

