.class public Lcom/gpc/exif/GPCExifInterface;
.super Ljava/lang/Object;
.source "GPCExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/exif/GPCExifInterface$ExifTag;,
        Lcom/gpc/exif/GPCExifInterface$ExifAttribute;,
        Lcom/gpc/exif/GPCExifInterface$Rational;,
        Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;,
        Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;,
        Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;,
        Lcom/gpc/exif/GPCExifInterface$IfdType;,
        Lcom/gpc/exif/GPCExifInterface$ExifStreamType;
    }
.end annotation


# static fields
.field public static final ALTITUDE_ABOVE_SEA_LEVEL:S = 0x0s

.field public static final ALTITUDE_BELOW_SEA_LEVEL:S = 0x1s

.field static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field static final BYTE_ALIGN_II:S = 0x4949s

.field static final BYTE_ALIGN_MM:S = 0x4d4ds

.field public static final COLOR_SPACE_S_RGB:I = 0x1

.field public static final COLOR_SPACE_UNCALIBRATED:I = 0xffff

.field public static final CONTRAST_HARD:S = 0x2s

.field public static final CONTRAST_NORMAL:S = 0x0s

.field public static final CONTRAST_SOFT:S = 0x1s

.field public static final DATA_DEFLATE_ZIP:I = 0x8

.field public static final DATA_HUFFMAN_COMPRESSED:I = 0x2

.field public static final DATA_JPEG:I = 0x6

.field public static final DATA_JPEG_COMPRESSED:I = 0x7

.field public static final DATA_LOSSY_JPEG:I = 0x884c

.field public static final DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field public static final DATA_UNCOMPRESSED:I = 0x1

.field private static final DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DATETIME_VALUE_STRING_LENGTH:I = 0x13

.field private static final DEBUG:Z

.field static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

.field static final EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

.field public static final EXPOSURE_MODE_AUTO:S = 0x0s

.field public static final EXPOSURE_MODE_AUTO_BRACKET:S = 0x2s

.field public static final EXPOSURE_MODE_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_ACTION:S = 0x6s

.field public static final EXPOSURE_PROGRAM_APERTURE_PRIORITY:S = 0x3s

.field public static final EXPOSURE_PROGRAM_CREATIVE:S = 0x5s

.field public static final EXPOSURE_PROGRAM_LANDSCAPE_MODE:S = 0x8s

.field public static final EXPOSURE_PROGRAM_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_NORMAL:S = 0x2s

.field public static final EXPOSURE_PROGRAM_NOT_DEFINED:S = 0x0s

.field public static final EXPOSURE_PROGRAM_PORTRAIT_MODE:S = 0x7s

.field public static final EXPOSURE_PROGRAM_SHUTTER_PRIORITY:S = 0x4s

.field public static final FILE_SOURCE_DSC:S = 0x3s

.field public static final FILE_SOURCE_OTHER:S = 0x0s

.field public static final FILE_SOURCE_REFLEX_SCANNER:S = 0x2s

.field public static final FILE_SOURCE_TRANSPARENT_SCANNER:S = 0x1s

.field public static final FLAG_FLASH_FIRED:S = 0x1s

.field public static final FLAG_FLASH_MODE_AUTO:S = 0x18s

.field public static final FLAG_FLASH_MODE_COMPULSORY_FIRING:S = 0x8s

.field public static final FLAG_FLASH_MODE_COMPULSORY_SUPPRESSION:S = 0x10s

.field public static final FLAG_FLASH_NO_FLASH_FUNCTION:S = 0x20s

.field public static final FLAG_FLASH_RED_EYE_SUPPORTED:S = 0x40s

.field public static final FLAG_FLASH_RETURN_LIGHT_DETECTED:S = 0x6s

.field public static final FLAG_FLASH_RETURN_LIGHT_NOT_DETECTED:S = 0x4s

.field private static final FLIPPED_ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_CHUNKY:S = 0x1s

.field public static final FORMAT_PLANAR:S = 0x2s

.field public static final GAIN_CONTROL_HIGH_GAIN_DOWN:S = 0x4s

.field public static final GAIN_CONTROL_HIGH_GAIN_UP:S = 0x2s

.field public static final GAIN_CONTROL_LOW_GAIN_DOWN:S = 0x3s

.field public static final GAIN_CONTROL_LOW_GAIN_UP:S = 0x1s

.field public static final GAIN_CONTROL_NONE:S = 0x0s

.field public static final GPS_DIRECTION_MAGNETIC:Ljava/lang/String; = "M"

.field public static final GPS_DIRECTION_TRUE:Ljava/lang/String; = "T"

.field public static final GPS_DISTANCE_KILOMETERS:Ljava/lang/String; = "K"

.field public static final GPS_DISTANCE_MILES:Ljava/lang/String; = "M"

.field public static final GPS_DISTANCE_NAUTICAL_MILES:Ljava/lang/String; = "N"

.field public static final GPS_MEASUREMENT_2D:Ljava/lang/String; = "2"

.field public static final GPS_MEASUREMENT_3D:Ljava/lang/String; = "3"

.field public static final GPS_MEASUREMENT_DIFFERENTIAL_CORRECTED:S = 0x1s

.field public static final GPS_MEASUREMENT_INTERRUPTED:Ljava/lang/String; = "V"

.field public static final GPS_MEASUREMENT_IN_PROGRESS:Ljava/lang/String; = "A"

.field public static final GPS_MEASUREMENT_NO_DIFFERENTIAL:S = 0x0s

.field public static final GPS_SPEED_KILOMETERS_PER_HOUR:Ljava/lang/String; = "K"

.field public static final GPS_SPEED_KNOTS:Ljava/lang/String; = "N"

.field public static final GPS_SPEED_MILES_PER_HOUR:Ljava/lang/String; = "M"

.field private static final GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEIF_BRAND_HEIC:[B

.field private static final HEIF_BRAND_MIF1:[B

.field private static final HEIF_TYPE_FTYP:[B

.field static final IDENTIFIER_EXIF_APP1:[B

.field private static final IDENTIFIER_XMP_APP1:[B

.field private static final IFD_EXIF_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_IFD:I = 0xd

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

.field private static final IFD_OFFSET:I = 0x8

.field private static final IFD_THUMBNAIL_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

.field private static final IFD_TYPE_EXIF:I = 0x1

.field private static final IFD_TYPE_GPS:I = 0x2

.field private static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final IFD_TYPE_PEF:I = 0x9

.field static final IFD_TYPE_PREVIEW:I = 0x5

.field static final IFD_TYPE_PRIMARY:I = 0x0

.field static final IFD_TYPE_THUMBNAIL:I = 0x4

.field static final IMAGE_TYPE_ARW:I = 0x1

.field static final IMAGE_TYPE_CR2:I = 0x2

.field static final IMAGE_TYPE_DNG:I = 0x3

.field static final IMAGE_TYPE_HEIF:I = 0xc

.field static final IMAGE_TYPE_JPEG:I = 0x4

.field static final IMAGE_TYPE_NEF:I = 0x5

.field static final IMAGE_TYPE_NRW:I = 0x6

.field static final IMAGE_TYPE_ORF:I = 0x7

.field static final IMAGE_TYPE_PEF:I = 0x8

.field static final IMAGE_TYPE_PNG:I = 0xd

.field static final IMAGE_TYPE_RAF:I = 0x9

.field static final IMAGE_TYPE_RW2:I = 0xa

.field static final IMAGE_TYPE_SRW:I = 0xb

.field static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field static final IMAGE_TYPE_WEBP:I = 0xe

.field static final JPEG_SIGNATURE:[B

.field public static final LATITUDE_NORTH:Ljava/lang/String; = "N"

.field public static final LATITUDE_SOUTH:Ljava/lang/String; = "S"

.field public static final LIGHT_SOURCE_CLOUDY_WEATHER:S = 0xas

.field public static final LIGHT_SOURCE_COOL_WHITE_FLUORESCENT:S = 0xes

.field public static final LIGHT_SOURCE_D50:S = 0x17s

.field public static final LIGHT_SOURCE_D55:S = 0x14s

.field public static final LIGHT_SOURCE_D65:S = 0x15s

.field public static final LIGHT_SOURCE_D75:S = 0x16s

.field public static final LIGHT_SOURCE_DAYLIGHT:S = 0x1s

.field public static final LIGHT_SOURCE_DAYLIGHT_FLUORESCENT:S = 0xcs

.field public static final LIGHT_SOURCE_DAY_WHITE_FLUORESCENT:S = 0xds

.field public static final LIGHT_SOURCE_FINE_WEATHER:S = 0x9s

.field public static final LIGHT_SOURCE_FLASH:S = 0x4s

.field public static final LIGHT_SOURCE_FLUORESCENT:S = 0x2s

.field public static final LIGHT_SOURCE_ISO_STUDIO_TUNGSTEN:S = 0x18s

.field public static final LIGHT_SOURCE_OTHER:S = 0xffs

.field public static final LIGHT_SOURCE_SHADE:S = 0xbs

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_A:S = 0x11s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_B:S = 0x12s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_C:S = 0x13s

.field public static final LIGHT_SOURCE_TUNGSTEN:S = 0x3s

.field public static final LIGHT_SOURCE_UNKNOWN:S = 0x0s

.field public static final LIGHT_SOURCE_WARM_WHITE_FLUORESCENT:S = 0x10s

.field public static final LIGHT_SOURCE_WHITE_FLUORESCENT:S = 0xfs

.field public static final LONGITUDE_EAST:Ljava/lang/String; = "E"

.field public static final LONGITUDE_WEST:Ljava/lang/String; = "W"

.field static final MARKER:B = -0x1t

.field static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field public static final METERING_MODE_AVERAGE:S = 0x1s

.field public static final METERING_MODE_CENTER_WEIGHT_AVERAGE:S = 0x2s

.field public static final METERING_MODE_MULTI_SPOT:S = 0x4s

.field public static final METERING_MODE_OTHER:S = 0xffs

.field public static final METERING_MODE_PARTIAL:S = 0x6s

.field public static final METERING_MODE_PATTERN:S = 0x5s

.field public static final METERING_MODE_SPOT:S = 0x3s

.field public static final METERING_MODE_UNKNOWN:S = 0x0s

.field private static final NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final ORF_MAKER_NOTE_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

.field private static final ORF_SIGNATURE_1:S = 0x4f52s

.field private static final ORF_SIGNATURE_2:S = 0x5352s

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final PEF_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

.field public static final PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field public static final PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field public static final PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field public static final PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final PNG_CHUNK_CRC_BYTE_LENGTH:I = 0x4

.field private static final PNG_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final PNG_CHUNK_TYPE_EXIF:[B

.field private static final PNG_CHUNK_TYPE_IEND:[B

.field private static final PNG_CHUNK_TYPE_IHDR:[B

.field private static final PNG_SIGNATURE:[B

.field private static final RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field public static final REDUCED_RESOLUTION_IMAGE:I = 0x1

.field public static final RENDERED_PROCESS_CUSTOM:S = 0x1s

.field public static final RENDERED_PROCESS_NORMAL:S = 0x0s

.field public static final RESOLUTION_UNIT_CENTIMETERS:S = 0x3s

.field public static final RESOLUTION_UNIT_INCHES:S = 0x2s

.field private static final ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RW2_SIGNATURE:S = 0x55s

.field public static final SATURATION_HIGH:S = 0x0s

.field public static final SATURATION_LOW:S = 0x0s

.field public static final SATURATION_NORMAL:S = 0x0s

.field public static final SCENE_CAPTURE_TYPE_LANDSCAPE:S = 0x1s

.field public static final SCENE_CAPTURE_TYPE_NIGHT:S = 0x3s

.field public static final SCENE_CAPTURE_TYPE_PORTRAIT:S = 0x2s

.field public static final SCENE_CAPTURE_TYPE_STANDARD:S = 0x0s

.field public static final SCENE_TYPE_DIRECTLY_PHOTOGRAPHED:S = 0x1s

.field public static final SENSITIVITY_TYPE_ISO_SPEED:S = 0x3s

.field public static final SENSITIVITY_TYPE_REI:S = 0x2s

.field public static final SENSITIVITY_TYPE_REI_AND_ISO:S = 0x6s

.field public static final SENSITIVITY_TYPE_SOS:S = 0x1s

.field public static final SENSITIVITY_TYPE_SOS_AND_ISO:S = 0x5s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI:S = 0x4s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI_AND_ISO:S = 0x7s

.field public static final SENSITIVITY_TYPE_UNKNOWN:S = 0x0s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL:S = 0x5s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL_LINEAR:S = 0x8s

.field public static final SENSOR_TYPE_NOT_DEFINED:S = 0x1s

.field public static final SENSOR_TYPE_ONE_CHIP:S = 0x2s

.field public static final SENSOR_TYPE_THREE_CHIP:S = 0x4s

.field public static final SENSOR_TYPE_TRILINEAR:S = 0x7s

.field public static final SENSOR_TYPE_TWO_CHIP:S = 0x3s

.field public static final SHARPNESS_HARD:S = 0x2s

.field public static final SHARPNESS_NORMAL:S = 0x0s

.field public static final SHARPNESS_SOFT:S = 0x1s

.field private static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field private static final SKIP_BUFFER_SIZE:I = 0x2000

.field static final START_CODE:B = 0x2at

.field public static final STREAM_TYPE_EXIF_DATA_ONLY:I = 0x1

.field public static final STREAM_TYPE_FULL_IMAGE_DATA:I = 0x0

.field public static final SUBJECT_DISTANCE_RANGE_CLOSE_VIEW:S = 0x2s

.field public static final SUBJECT_DISTANCE_RANGE_DISTANT_VIEW:S = 0x3s

.field public static final SUBJECT_DISTANCE_RANGE_MACRO:S = 0x1s

.field public static final SUBJECT_DISTANCE_RANGE_UNKNOWN:S = 0x0s

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BODY_SERIAL_NUMBER:Ljava/lang/String; = "BodySerialNumber"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CAMARA_OWNER_NAME:Ljava/lang/String; = "CameraOwnerName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_CAMERA_OWNER_NAME:Ljava/lang/String; = "CameraOwnerName"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GAMMA:Ljava/lang/String; = "Gamma"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_H_POSITIONING_ERROR:Ljava/lang/String; = "GPSHPositioningError"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO_SPEED:Ljava/lang/String; = "ISOSpeed"

.field public static final TAG_ISO_SPEED_LATITUDE_YYY:Ljava/lang/String; = "ISOSpeedLatitudeyyy"

.field public static final TAG_ISO_SPEED_LATITUDE_ZZZ:Ljava/lang/String; = "ISOSpeedLatitudezzz"

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LENS_MAKE:Ljava/lang/String; = "LensMake"

.field public static final TAG_LENS_MODEL:Ljava/lang/String; = "LensModel"

.field public static final TAG_LENS_SERIAL_NUMBER:Ljava/lang/String; = "LensSerialNumber"

.field public static final TAG_LENS_SPECIFICATION:Ljava/lang/String; = "LensSpecification"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_OFFSET_TIME:Ljava/lang/String; = "OffsetTime"

.field public static final TAG_OFFSET_TIME_DIGITIZED:Ljava/lang/String; = "OffsetTimeDigitized"

.field public static final TAG_OFFSET_TIME_ORIGINAL:Ljava/lang/String; = "OffsetTimeOriginal"

.field public static final TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOGRAPHIC_SENSITIVITY:Ljava/lang/String; = "PhotographicSensitivity"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final TAG_RAF_IMAGE_SIZE:Lcom/gpc/exif/GPCExifInterface$ExifTag;

.field public static final TAG_RECOMMENDED_EXPOSURE_INDEX:Ljava/lang/String; = "RecommendedExposureIndex"

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SENSITIVITY_TYPE:Ljava/lang/String; = "SensitivityType"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STANDARD_OUTPUT_SENSITIVITY:Ljava/lang/String; = "StandardOutputSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field public static final TAG_THUMBNAIL_ORIENTATION:Ljava/lang/String; = "ThumbnailOrientation"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_XMP:Ljava/lang/String; = "Xmp"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field private static final WEBP_CHUNK_SIZE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_CHUNK_TYPE_ANIM:[B

.field private static final WEBP_CHUNK_TYPE_ANMF:[B

.field private static final WEBP_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_CHUNK_TYPE_EXIF:[B

.field private static final WEBP_CHUNK_TYPE_VP8:[B

.field private static final WEBP_CHUNK_TYPE_VP8L:[B

.field private static final WEBP_CHUNK_TYPE_VP8X:[B

.field private static final WEBP_CHUNK_TYPE_VP8X_DEFAULT_LENGTH:I = 0xa

.field private static final WEBP_FILE_SIZE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_SIGNATURE_1:[B

.field private static final WEBP_SIGNATURE_2:[B

.field private static final WEBP_VP8L_SIGNATURE:B = 0x2ft

.field private static final WEBP_VP8_SIGNATURE:[B

.field public static final WHITEBALANCE_AUTO:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITEBALANCE_MANUAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITE_BALANCE_AUTO:S = 0x0s

.field public static final WHITE_BALANCE_MANUAL:S = 0x1s

.field public static final Y_CB_CR_POSITIONING_CENTERED:S = 0x1s

.field public static final Y_CB_CR_POSITIONING_CO_SITED:S = 0x2s

.field private static final sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/gpc/exif/GPCExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/exif/GPCExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatterPrimary:Ljava/text/SimpleDateFormat;

.field private static sFormatterSecondary:Ljava/text/SimpleDateFormat;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAreThumbnailStripsConsecutive:Z

.field private mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/exif/GPCExifInterface$ExifAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mAttributesOffsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mHasThumbnailStrips:Z

.field private mIsExifDataOnly:Z

.field private mMimeType:I

.field private mModified:Z

.field private mOffsetToExifData:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I

.field private mXmpIsFromSeparateMarker:Z


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 79
    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    .line 2300
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    const/4 v0, 0x1

    .line 2299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    .line 2300
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Integer;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    aput-object v5, v9, v0

    const/4 v5, 0x2

    .line 2302
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 2300
    aput-object v2, v9, v5

    aput-object v7, v9, v1

    .line 2299
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Lcom/gpc/exif/GPCExifInterface;->ROTATION_ORDER:Ljava/util/List;

    const/4 v9, 0x7

    .line 2302
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x5

    .line 2303
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    new-array v10, v8, [Ljava/lang/Integer;

    aput-object v11, v10, v16

    aput-object v12, v10, v0

    aput-object v13, v10, v5

    aput-object v15, v10, v1

    .line 2301
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    .line 2946
    filled-new-array {v6, v6, v6}, [I

    move-result-object v10

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 2951
    filled-new-array {v8}, [I

    move-result-object v10

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 2956
    filled-new-array {v6}, [I

    move-result-object v10

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 3011
    new-array v10, v1, [B

    fill-array-data v10, :array_0

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->JPEG_SIGNATURE:[B

    .line 3015
    new-array v10, v8, [B

    fill-array-data v10, :array_1

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->HEIF_TYPE_FTYP:[B

    .line 3016
    new-array v10, v8, [B

    fill-array-data v10, :array_2

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->HEIF_BRAND_MIF1:[B

    .line 3017
    new-array v10, v8, [B

    fill-array-data v10, :array_3

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->HEIF_BRAND_HEIC:[B

    .line 3025
    new-array v10, v4, [B

    fill-array-data v10, :array_4

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v10, 0xa

    .line 3027
    new-array v13, v10, [B

    fill-array-data v13, :array_5

    sput-object v13, Lcom/gpc/exif/GPCExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 3043
    new-array v13, v6, [B

    fill-array-data v13, :array_6

    sput-object v13, Lcom/gpc/exif/GPCExifInterface;->PNG_SIGNATURE:[B

    .line 3047
    new-array v13, v8, [B

    fill-array-data v13, :array_7

    sput-object v13, Lcom/gpc/exif/GPCExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    .line 3049
    new-array v13, v8, [B

    fill-array-data v13, :array_8

    sput-object v13, Lcom/gpc/exif/GPCExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    .line 3051
    new-array v13, v8, [B

    fill-array-data v13, :array_9

    sput-object v13, Lcom/gpc/exif/GPCExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    .line 3057
    new-array v13, v8, [B

    fill-array-data v13, :array_a

    sput-object v13, Lcom/gpc/exif/GPCExifInterface;->WEBP_SIGNATURE_1:[B

    .line 3058
    new-array v13, v8, [B

    fill-array-data v13, :array_b

    sput-object v13, Lcom/gpc/exif/GPCExifInterface;->WEBP_SIGNATURE_2:[B

    .line 3060
    new-array v13, v8, [B

    fill-array-data v13, :array_c

    sput-object v13, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 3062
    new-array v13, v1, [B

    fill-array-data v13, :array_d

    sput-object v13, Lcom/gpc/exif/GPCExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 3065
    const-string v13, "VP8X"

    const/16 v17, 0xa

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    .line 3066
    const-string v10, "VP8L"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 3067
    const-string v10, "VP8 "

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    .line 3068
    const-string v10, "ANIM"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    .line 3069
    const-string v10, "ANMF"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    .line 3109
    const-string v30, "DOUBLE"

    const-string v31, "IFD"

    const-string v18, ""

    const-string v19, "BYTE"

    const-string v20, "STRING"

    const-string v21, "USHORT"

    const-string v22, "ULONG"

    const-string v23, "URATIONAL"

    const-string v24, "SBYTE"

    const-string v25, "UNDEFINED"

    const-string v26, "SSHORT"

    const-string v27, "SLONG"

    const-string v28, "SRATIONAL"

    const-string v29, "SINGLE"

    filled-new-array/range {v18 .. v31}, [Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/gpc/exif/GPCExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v10, 0xe

    .line 3114
    new-array v13, v10, [I

    fill-array-data v13, :array_e

    sput-object v13, Lcom/gpc/exif/GPCExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 3119
    new-array v13, v6, [B

    fill-array-data v13, :array_f

    sput-object v13, Lcom/gpc/exif/GPCExifInterface;->EXIF_ASCII_PREFIX:[B

    const/16 v13, 0x2a

    .line 3574
    new-array v13, v13, [Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const/16 v18, 0xe

    new-instance v10, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const/16 v19, 0x8

    const-string v6, "NewSubfileType"

    const/16 v20, 0x1

    const/16 v0, 0xfe

    invoke-direct {v10, v6, v0, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v10, v13, v16

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v0, v6, v10, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v13, v20

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ImageWidth"

    const/16 v10, 0x100

    invoke-direct {v0, v6, v10, v1, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v0, v13, v5

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ImageLength"

    const/16 v10, 0x101

    invoke-direct {v0, v6, v10, v1, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v0, v13, v1

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v0, v6, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v13, v8

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "Compression"

    const/16 v10, 0x103

    invoke-direct {v0, v6, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v13, v14

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "PhotometricInterpretation"

    const/16 v10, 0x106

    invoke-direct {v0, v6, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v13, v4

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ImageDescription"

    const/16 v10, 0x10e

    invoke-direct {v0, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v13, v9

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "Make"

    const/16 v10, 0x10f

    invoke-direct {v0, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v13, v19

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "Model"

    const/16 v10, 0x110

    invoke-direct {v0, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x9

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "StripOffsets"

    const/16 v21, 0x9

    const/16 v6, 0x111

    invoke-direct {v0, v10, v6, v1, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v0, v13, v17

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "Orientation"

    const/16 v10, 0x112

    invoke-direct {v0, v6, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xb

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "SamplesPerPixel"

    const/16 v22, 0xb

    const/16 v6, 0x115

    invoke-direct {v0, v10, v6, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xc

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "RowsPerStrip"

    const/16 v23, 0xc

    const/16 v6, 0x116

    invoke-direct {v0, v10, v6, v1, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0xd

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "StripByteCounts"

    const/16 v24, 0xd

    const/16 v6, 0x117

    invoke-direct {v0, v10, v6, v1, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v0, v13, v18

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "XResolution"

    const/16 v10, 0x11a

    invoke-direct {v0, v6, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xf

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "YResolution"

    const/16 v25, 0xf

    const/16 v6, 0x11b

    invoke-direct {v0, v10, v6, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x10

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "PlanarConfiguration"

    const/16 v26, 0x10

    const/16 v6, 0x11c

    invoke-direct {v0, v10, v6, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x11

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "ResolutionUnit"

    const/16 v27, 0x11

    const/16 v6, 0x128

    invoke-direct {v0, v10, v6, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x12

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "TransferFunction"

    const/16 v28, 0x12

    const/16 v6, 0x12d

    invoke-direct {v0, v10, v6, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x13

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "Software"

    const/16 v10, 0x131

    invoke-direct {v0, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "DateTime"

    const/16 v10, 0x132

    invoke-direct {v0, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "Artist"

    const/16 v10, 0x13b

    invoke-direct {v0, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "WhitePoint"

    const/16 v10, 0x13e

    invoke-direct {v0, v6, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x17

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "PrimaryChromaticities"

    const/16 v6, 0x13f

    invoke-direct {v0, v10, v6, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SubIFDPointer"

    const/16 v10, 0x14a

    invoke-direct {v0, v6, v10, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "JPEGInterchangeFormat"

    const/16 v10, 0x201

    invoke-direct {v0, v6, v10, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "JPEGInterchangeFormatLength"

    const/16 v30, 0x1a

    const/16 v6, 0x202

    invoke-direct {v0, v10, v6, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "YCbCrCoefficients"

    const/16 v10, 0x211

    invoke-direct {v0, v6, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "YCbCrSubSampling"

    const/16 v10, 0x212

    invoke-direct {v0, v6, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "YCbCrPositioning"

    const/16 v10, 0x213

    invoke-direct {v0, v6, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ReferenceBlackWhite"

    const/16 v10, 0x214

    invoke-direct {v0, v6, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "Copyright"

    const v10, 0x8298

    invoke-direct {v0, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ExifIFDPointer"

    const v10, 0x8769

    invoke-direct {v0, v6, v10, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "GPSInfoIFDPointer"

    const v10, 0x8825

    invoke-direct {v0, v6, v10, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SensorTopBorder"

    invoke-direct {v0, v6, v8, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SensorLeftBorder"

    invoke-direct {v0, v6, v14, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SensorBottomBorder"

    invoke-direct {v0, v6, v4, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SensorRightBorder"

    invoke-direct {v0, v6, v9, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x26

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ISO"

    const/16 v10, 0x17

    invoke-direct {v0, v6, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x27

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "JpgFromRaw"

    const/16 v10, 0x2e

    invoke-direct {v0, v6, v10, v9}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v0, v13, v6

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "Xmp"

    const/16 v10, 0x2bc

    const/4 v4, 0x1

    const/16 v31, 0x6

    invoke-direct {v0, v6, v10, v4}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x29

    aput-object v0, v13, v4

    sput-object v13, Lcom/gpc/exif/GPCExifInterface;->IFD_TIFF_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const/16 v0, 0x4a

    .line 3624
    new-array v0, v0, [Lcom/gpc/exif/GPCExifInterface$ExifTag;

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ExposureTime"

    const v10, 0x829a

    invoke-direct {v4, v6, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v16

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "FNumber"

    const v10, 0x829d

    invoke-direct {v4, v6, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v20, 0x1

    aput-object v4, v0, v20

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ExposureProgram"

    const v10, 0x8822

    invoke-direct {v4, v6, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v5

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SpectralSensitivity"

    const v10, 0x8824

    invoke-direct {v4, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v1

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "PhotographicSensitivity"

    const v10, 0x8827

    invoke-direct {v4, v6, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v8

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "OECF"

    const v10, 0x8828

    invoke-direct {v4, v6, v10, v9}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v14

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SensitivityType"

    const v10, 0x8830

    invoke-direct {v4, v6, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v31

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "StandardOutputSensitivity"

    const v10, 0x8831

    invoke-direct {v4, v6, v10, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v9

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "RecommendedExposureIndex"

    const v10, 0x8832

    invoke-direct {v4, v6, v10, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v19

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ISOSpeed"

    const v10, 0x8833

    invoke-direct {v4, v6, v10, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v21

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ISOSpeedLatitudeyyy"

    const v10, 0x8834

    invoke-direct {v4, v6, v10, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v17

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ISOSpeedLatitudezzz"

    const v10, 0x8835

    invoke-direct {v4, v6, v10, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v22

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ExifVersion"

    const v10, 0x9000

    invoke-direct {v4, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v23

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "DateTimeOriginal"

    const v10, 0x9003

    invoke-direct {v4, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v24

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "DateTimeDigitized"

    const v10, 0x9004

    invoke-direct {v4, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v18

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "OffsetTime"

    const v10, 0x9010

    invoke-direct {v4, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v25

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "OffsetTimeOriginal"

    const v10, 0x9011

    invoke-direct {v4, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v26

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "OffsetTimeDigitized"

    const v10, 0x9012

    invoke-direct {v4, v6, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v27

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ComponentsConfiguration"

    const v10, 0x9101

    invoke-direct {v4, v6, v10, v9}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v28

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "CompressedBitsPerPixel"

    const v10, 0x9102

    invoke-direct {v4, v6, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x13

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ShutterSpeedValue"

    const v10, 0x9201

    const/16 v8, 0xa

    invoke-direct {v4, v6, v10, v8}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ApertureValue"

    const v8, 0x9202

    invoke-direct {v4, v6, v8, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "BrightnessValue"

    const v8, 0x9203

    const/16 v10, 0xa

    invoke-direct {v4, v6, v8, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ExposureBiasValue"

    const v8, 0x9204

    invoke-direct {v4, v6, v8, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v29, 0x17

    aput-object v4, v0, v29

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "MaxApertureValue"

    const v8, 0x9205

    invoke-direct {v4, v6, v8, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SubjectDistance"

    const v8, 0x9206

    invoke-direct {v4, v6, v8, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "MeteringMode"

    const v8, 0x9207

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v30

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "LightSource"

    const v8, 0x9208

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "Flash"

    const v8, 0x9209

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "FocalLength"

    const v8, 0x920a

    invoke-direct {v4, v6, v8, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SubjectArea"

    const v8, 0x9214

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "MakerNote"

    const v8, 0x927c

    invoke-direct {v4, v6, v8, v9}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "UserComment"

    const v8, 0x9286

    invoke-direct {v4, v6, v8, v9}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SubSecTime"

    const v8, 0x9290

    invoke-direct {v4, v6, v8, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SubSecTimeOriginal"

    const v8, 0x9291

    invoke-direct {v4, v6, v8, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SubSecTimeDigitized"

    const v8, 0x9292

    invoke-direct {v4, v6, v8, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "FlashpixVersion"

    const v8, 0xa000

    invoke-direct {v4, v6, v8, v9}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ColorSpace"

    const v8, 0xa001

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "PixelXDimension"

    const v8, 0xa002

    const/4 v10, 0x4

    invoke-direct {v4, v6, v8, v1, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x26

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "PixelYDimension"

    const v8, 0xa003

    invoke-direct {v4, v6, v8, v1, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x27

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "RelatedSoundFile"

    const v8, 0xa004

    invoke-direct {v4, v6, v8, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "InteroperabilityIFDPointer"

    const v8, 0xa005

    const/4 v10, 0x4

    invoke-direct {v4, v6, v8, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x29

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "FlashEnergy"

    const v8, 0xa20b

    invoke-direct {v4, v6, v8, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2a

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SpatialFrequencyResponse"

    const v8, 0xa20c

    invoke-direct {v4, v6, v8, v9}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2b

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "FocalPlaneXResolution"

    const v8, 0xa20e

    invoke-direct {v4, v6, v8, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2c

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "FocalPlaneYResolution"

    const v8, 0xa20f

    invoke-direct {v4, v6, v8, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2d

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "FocalPlaneResolutionUnit"

    const v8, 0xa210

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2e

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SubjectLocation"

    const v8, 0xa214

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2f

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ExposureIndex"

    const v8, 0xa215

    invoke-direct {v4, v6, v8, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x30

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SensingMethod"

    const v8, 0xa217

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x31

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "FileSource"

    const v8, 0xa300

    invoke-direct {v4, v6, v8, v9}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x32

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SceneType"

    const v8, 0xa301

    invoke-direct {v4, v6, v8, v9}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x33

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "CFAPattern"

    const v8, 0xa302

    invoke-direct {v4, v6, v8, v9}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x34

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "CustomRendered"

    const v8, 0xa401

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x35

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ExposureMode"

    const v8, 0xa402

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x36

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "WhiteBalance"

    const v8, 0xa403

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x37

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "DigitalZoomRatio"

    const v8, 0xa404

    invoke-direct {v4, v6, v8, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x38

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "FocalLengthIn35mmFilm"

    const v8, 0xa405

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x39

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SceneCaptureType"

    const v8, 0xa406

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3a

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "GainControl"

    const v8, 0xa407

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3b

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "Contrast"

    const v8, 0xa408

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3c

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "Saturation"

    const v8, 0xa409

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3d

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "Sharpness"

    const v8, 0xa40a

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3e

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "DeviceSettingDescription"

    const v8, 0xa40b

    invoke-direct {v4, v6, v8, v9}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3f

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "SubjectDistanceRange"

    const v8, 0xa40c

    invoke-direct {v4, v6, v8, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x40

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "ImageUniqueID"

    const v8, 0xa420

    invoke-direct {v4, v6, v8, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x41

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "CameraOwnerName"

    const v8, 0xa430

    invoke-direct {v4, v6, v8, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x42

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "BodySerialNumber"

    const v8, 0xa431

    invoke-direct {v4, v6, v8, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x43

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "LensSpecification"

    const v8, 0xa432

    invoke-direct {v4, v6, v8, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x44

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "LensMake"

    const v8, 0xa433

    invoke-direct {v4, v6, v8, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x45

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "LensModel"

    const v8, 0xa434

    invoke-direct {v4, v6, v8, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x46

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "Gamma"

    const v8, 0xa500

    invoke-direct {v4, v6, v8, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x47

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "DNGVersion"

    const v8, 0xc612

    const/4 v10, 0x1

    invoke-direct {v4, v6, v8, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x48

    aput-object v4, v0, v6

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v6, "DefaultCropSize"

    const v8, 0xc620

    const/4 v10, 0x4

    invoke-direct {v4, v6, v8, v1, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x49

    aput-object v4, v0, v6

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->IFD_EXIF_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const/16 v4, 0x20

    .line 3702
    new-array v4, v4, [Lcom/gpc/exif/GPCExifInterface$ExifTag;

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSVersionID"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v6, v8, v9, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSLatitudeRef"

    invoke-direct {v6, v8, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v10

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSLatitude"

    const/16 v10, 0xa

    invoke-direct {v6, v8, v5, v14, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v6, v4, v5

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSLongitudeRef"

    invoke-direct {v6, v8, v1, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v1

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSLongitude"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9, v14, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSAltitudeRef"

    const/4 v10, 0x1

    invoke-direct {v6, v8, v14, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v14

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSAltitude"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSTimeStamp"

    const/4 v9, 0x7

    invoke-direct {v6, v8, v9, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSSatellites"

    const/16 v9, 0x8

    invoke-direct {v6, v8, v9, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSStatus"

    const/16 v9, 0x9

    invoke-direct {v6, v8, v9, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSMeasureMode"

    const/16 v10, 0xa

    invoke-direct {v6, v8, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v10

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSDOP"

    const/16 v9, 0xb

    invoke-direct {v6, v8, v9, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSSpeedRef"

    const/16 v9, 0xc

    invoke-direct {v6, v8, v9, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSSpeed"

    const/16 v9, 0xd

    invoke-direct {v6, v8, v9, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSTrackRef"

    const/16 v9, 0xe

    invoke-direct {v6, v8, v9, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSTrack"

    const/16 v9, 0xf

    invoke-direct {v6, v8, v9, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSImgDirectionRef"

    const/16 v9, 0x10

    invoke-direct {v6, v8, v9, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSImgDirection"

    const/16 v9, 0x11

    invoke-direct {v6, v8, v9, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSMapDatum"

    const/16 v9, 0x12

    invoke-direct {v6, v8, v9, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSDestLatitudeRef"

    const/16 v9, 0x13

    invoke-direct {v6, v8, v9, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0x13

    aput-object v6, v4, v8

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSDestLatitude"

    const/16 v9, 0x14

    invoke-direct {v6, v8, v9, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0x14

    aput-object v6, v4, v8

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSDestLongitudeRef"

    const/16 v9, 0x15

    invoke-direct {v6, v8, v9, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0x15

    aput-object v6, v4, v8

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSDestLongitude"

    const/16 v9, 0x16

    invoke-direct {v6, v8, v9, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0x16

    aput-object v6, v4, v8

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSDestBearingRef"

    const/16 v10, 0x17

    invoke-direct {v6, v8, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v10

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSDestBearing"

    const/16 v9, 0x18

    invoke-direct {v6, v8, v9, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0x18

    aput-object v6, v4, v8

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSDestDistanceRef"

    const/16 v9, 0x19

    invoke-direct {v6, v8, v9, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0x19

    aput-object v6, v4, v8

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSDestDistance"

    const/16 v9, 0x1a

    invoke-direct {v6, v8, v9, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v9

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSProcessingMethod"

    const/16 v9, 0x1b

    const/4 v10, 0x7

    invoke-direct {v6, v8, v9, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0x1b

    aput-object v6, v4, v8

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSAreaInformation"

    const/16 v9, 0x1c

    invoke-direct {v6, v8, v9, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0x1c

    aput-object v6, v4, v8

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSDateStamp"

    const/16 v9, 0x1d

    invoke-direct {v6, v8, v9, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0x1d

    aput-object v6, v4, v8

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSDifferential"

    const/16 v9, 0x1e

    invoke-direct {v6, v8, v9, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0x1e

    aput-object v6, v4, v8

    new-instance v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v8, "GPSHPositioningError"

    const/16 v9, 0x1f

    invoke-direct {v6, v8, v9, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0x1f

    aput-object v6, v4, v8

    sput-object v4, Lcom/gpc/exif/GPCExifInterface;->IFD_GPS_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const/4 v10, 0x1

    .line 3739
    new-array v6, v10, [Lcom/gpc/exif/GPCExifInterface$ExifTag;

    new-instance v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "InteroperabilityIndex"

    invoke-direct {v8, v9, v10, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v16, 0x0

    aput-object v8, v6, v16

    sput-object v6, Lcom/gpc/exif/GPCExifInterface;->IFD_INTEROPERABILITY_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const/16 v8, 0x26

    .line 3743
    new-array v8, v8, [Lcom/gpc/exif/GPCExifInterface$ExifTag;

    new-instance v9, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "NewSubfileType"

    const/16 v34, 0x5

    const/16 v14, 0xfe

    const/4 v5, 0x4

    const/16 v35, 0x2

    invoke-direct {v9, v10, v14, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v8, v16

    new-instance v9, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "SubfileType"

    const/16 v14, 0xff

    invoke-direct {v9, v10, v14, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v20, 0x1

    aput-object v9, v8, v20

    new-instance v9, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "ThumbnailImageWidth"

    const/16 v14, 0x100

    invoke-direct {v9, v10, v14, v1, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v9, v8, v35

    new-instance v9, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "ThumbnailImageLength"

    const/16 v14, 0x101

    invoke-direct {v9, v10, v14, v1, v5}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v9, v8, v1

    new-instance v9, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "BitsPerSample"

    const/16 v14, 0x102

    invoke-direct {v9, v10, v14, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v9, v8, v5

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "Compression"

    const/16 v10, 0x103

    invoke-direct {v5, v9, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v5, v8, v34

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "PhotometricInterpretation"

    const/16 v10, 0x106

    invoke-direct {v5, v9, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v31, 0x6

    aput-object v5, v8, v31

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "ImageDescription"

    const/16 v10, 0x10e

    const/4 v14, 0x2

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v33, 0x7

    aput-object v5, v8, v33

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "Make"

    const/16 v10, 0x10f

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v19, 0x8

    aput-object v5, v8, v19

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "Model"

    const/16 v10, 0x110

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v21, 0x9

    aput-object v5, v8, v21

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "StripOffsets"

    const/16 v10, 0x111

    const/4 v14, 0x4

    invoke-direct {v5, v9, v10, v1, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v17, 0xa

    aput-object v5, v8, v17

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "ThumbnailOrientation"

    const/16 v10, 0x112

    invoke-direct {v5, v9, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v22, 0xb

    aput-object v5, v8, v22

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "SamplesPerPixel"

    const/16 v10, 0x115

    invoke-direct {v5, v9, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v23, 0xc

    aput-object v5, v8, v23

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "RowsPerStrip"

    const/16 v10, 0x116

    const/4 v14, 0x4

    invoke-direct {v5, v9, v10, v1, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v24, 0xd

    aput-object v5, v8, v24

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "StripByteCounts"

    const/16 v10, 0x117

    invoke-direct {v5, v9, v10, v1, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v18, 0xe

    aput-object v5, v8, v18

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "XResolution"

    const/16 v10, 0x11a

    const/4 v14, 0x5

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v25, 0xf

    aput-object v5, v8, v25

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "YResolution"

    const/16 v10, 0x11b

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v26, 0x10

    aput-object v5, v8, v26

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "PlanarConfiguration"

    const/16 v10, 0x11c

    invoke-direct {v5, v9, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v27, 0x11

    aput-object v5, v8, v27

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "ResolutionUnit"

    const/16 v10, 0x128

    invoke-direct {v5, v9, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v28, 0x12

    aput-object v5, v8, v28

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "TransferFunction"

    const/16 v10, 0x12d

    invoke-direct {v5, v9, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x13

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "Software"

    const/16 v10, 0x131

    const/4 v14, 0x2

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x14

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "DateTime"

    const/16 v10, 0x132

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x15

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "Artist"

    const/16 v10, 0x13b

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x16

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "WhitePoint"

    const/16 v10, 0x13e

    const/4 v14, 0x5

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v29, 0x17

    aput-object v5, v8, v29

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "PrimaryChromaticities"

    const/16 v10, 0x13f

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x18

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "SubIFDPointer"

    const/16 v10, 0x14a

    const/4 v14, 0x4

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x19

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "JPEGInterchangeFormat"

    const/16 v10, 0x201

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v30, 0x1a

    aput-object v5, v8, v30

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "JPEGInterchangeFormatLength"

    const/16 v10, 0x202

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x1b

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "YCbCrCoefficients"

    const/16 v10, 0x211

    const/4 v14, 0x5

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x1c

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "YCbCrSubSampling"

    const/16 v10, 0x212

    invoke-direct {v5, v9, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x1d

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "YCbCrPositioning"

    const/16 v10, 0x213

    invoke-direct {v5, v9, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x1e

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "ReferenceBlackWhite"

    const/16 v10, 0x214

    const/4 v14, 0x5

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x1f

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "Xmp"

    const/16 v10, 0x2bc

    const/4 v14, 0x1

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x20

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "Copyright"

    const v10, 0x8298

    const/4 v14, 0x2

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x21

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "ExifIFDPointer"

    const v10, 0x8769

    const/4 v14, 0x4

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x22

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "GPSInfoIFDPointer"

    const v10, 0x8825

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x23

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "DNGVersion"

    const v10, 0xc612

    const/4 v14, 0x1

    invoke-direct {v5, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v9, 0x24

    aput-object v5, v8, v9

    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "DefaultCropSize"

    const v10, 0xc620

    const/4 v14, 0x4

    invoke-direct {v5, v9, v10, v1, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v9, 0x25

    aput-object v5, v8, v9

    sput-object v8, Lcom/gpc/exif/GPCExifInterface;->IFD_THUMBNAIL_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    .line 3787
    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "StripOffsets"

    const/16 v10, 0x111

    invoke-direct {v5, v9, v10, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gpc/exif/GPCExifInterface;->TAG_RAF_IMAGE_SIZE:Lcom/gpc/exif/GPCExifInterface$ExifTag;

    .line 3791
    new-array v5, v1, [Lcom/gpc/exif/GPCExifInterface$ExifTag;

    new-instance v9, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "ThumbnailImage"

    const/16 v14, 0x100

    const/4 v1, 0x7

    invoke-direct {v9, v10, v14, v1}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v16, 0x0

    aput-object v9, v5, v16

    new-instance v1, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "CameraSettingsIFDPointer"

    const/16 v10, 0x2020

    const/4 v14, 0x4

    invoke-direct {v1, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v20, 0x1

    aput-object v1, v5, v20

    new-instance v1, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "ImageProcessingIFDPointer"

    const/16 v10, 0x2040

    invoke-direct {v1, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v9, 0x2

    aput-object v1, v5, v9

    sput-object v5, Lcom/gpc/exif/GPCExifInterface;->ORF_MAKER_NOTE_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    .line 3796
    new-array v1, v9, [Lcom/gpc/exif/GPCExifInterface$ExifTag;

    new-instance v9, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v10, "PreviewImageStart"

    move-object/from16 v22, v0

    const/16 v0, 0x101

    invoke-direct {v9, v10, v0, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v16, 0x0

    aput-object v9, v1, v16

    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v9, "PreviewImageLength"

    const/16 v10, 0x102

    invoke-direct {v0, v9, v10, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x1

    aput-object v0, v1, v10

    sput-object v1, Lcom/gpc/exif/GPCExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    .line 3800
    new-array v0, v10, [Lcom/gpc/exif/GPCExifInterface$ExifTag;

    new-instance v9, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v14, "AspectFrame"

    const/16 v10, 0x1113

    move-object/from16 v23, v0

    const/4 v0, 0x3

    invoke-direct {v9, v14, v10, v0}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v16, 0x0

    aput-object v9, v23, v16

    sput-object v23, Lcom/gpc/exif/GPCExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const/4 v10, 0x1

    .line 3804
    new-array v9, v10, [Lcom/gpc/exif/GPCExifInterface$ExifTag;

    new-instance v14, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const/16 v20, 0x1

    const-string v10, "ColorSpace"

    move-object/from16 v24, v1

    const/16 v1, 0x37

    invoke-direct {v14, v10, v1, v0}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v14, v9, v16

    sput-object v9, Lcom/gpc/exif/GPCExifInterface;->PEF_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const/16 v10, 0xa

    .line 3836
    new-array v1, v10, [[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    aput-object v13, v1, v16

    aput-object v22, v1, v20

    const/16 v35, 0x2

    aput-object v4, v1, v35

    aput-object v6, v1, v0

    const/4 v14, 0x4

    aput-object v8, v1, v14

    const/16 v34, 0x5

    aput-object v13, v1, v34

    const/4 v0, 0x6

    aput-object v5, v1, v0

    const/16 v33, 0x7

    aput-object v24, v1, v33

    const/16 v19, 0x8

    aput-object v23, v1, v19

    const/16 v21, 0x9

    aput-object v9, v1, v21

    sput-object v1, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    .line 3842
    new-array v0, v0, [Lcom/gpc/exif/GPCExifInterface$ExifTag;

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v5, "SubIFDPointer"

    const/16 v6, 0x14a

    invoke-direct {v4, v5, v6, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v16, 0x0

    aput-object v4, v0, v16

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v5, "ExifIFDPointer"

    const v6, 0x8769

    invoke-direct {v4, v5, v6, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v20, 0x1

    aput-object v4, v0, v20

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v5, "GPSInfoIFDPointer"

    const v6, 0x8825

    invoke-direct {v4, v5, v6, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v35, 0x2

    aput-object v4, v0, v35

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v5, "InteroperabilityIFDPointer"

    const v6, 0xa005

    invoke-direct {v4, v5, v6, v14}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v18, 0x3

    aput-object v4, v0, v18

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v5, "CameraSettingsIFDPointer"

    const/16 v6, 0x2020

    const/4 v10, 0x1

    invoke-direct {v4, v5, v6, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v4, v0, v14

    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const-string v5, "ImageProcessingIFDPointer"

    const/16 v6, 0x2040

    invoke-direct {v4, v5, v6, v10}, Lcom/gpc/exif/GPCExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v34, 0x5

    aput-object v4, v0, v34

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->EXIF_POINTER_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    .line 3853
    array-length v0, v1

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 3857
    array-length v0, v1

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3859
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "SubjectDistance"

    const-string v4, "GPSTimeStamp"

    const-string v5, "FNumber"

    const-string v6, "DigitalZoomRatio"

    const-string v8, "ExposureTime"

    filled-new-array {v5, v6, v8, v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 3864
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 3871
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 3873
    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/gpc/exif/GPCExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 3875
    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 3876
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 3918
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    .line 3919
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3920
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->sFormatterSecondary:Ljava/text/SimpleDateFormat;

    .line 3921
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v9, 0x0

    .line 3924
    :goto_0
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v1, v0

    if-ge v9, v1, :cond_1

    .line 3925
    sget-object v1, Lcom/gpc/exif/GPCExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v1, v9

    .line 3926
    sget-object v1, Lcom/gpc/exif/GPCExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v1, v9

    .line 3927
    aget-object v0, v0, v9

    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 3928
    sget-object v6, Lcom/gpc/exif/GPCExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v6, v6, v9

    iget v8, v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;->number:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3929
    sget-object v6, Lcom/gpc/exif/GPCExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v6, v6, v9

    iget-object v8, v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3934
    :cond_1
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/exif/GPCExifInterface;->EXIF_POINTER_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    const/16 v16, 0x0

    aget-object v4, v1, v16

    iget v4, v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;->number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v20, 0x1

    .line 3935
    aget-object v4, v1, v20

    iget v4, v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;->number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v35, 0x2

    .line 3936
    aget-object v3, v1, v35

    iget v3, v3, Lcom/gpc/exif/GPCExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v18, 0x3

    .line 3937
    aget-object v3, v1, v18

    iget v3, v3, Lcom/gpc/exif/GPCExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v32, 0x4

    .line 3938
    aget-object v2, v1, v32

    iget v2, v2, Lcom/gpc/exif/GPCExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v34, 0x5

    .line 3939
    aget-object v1, v1, v34

    iget v1, v1, Lcom/gpc/exif/GPCExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3970
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 3972
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3973
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 3975
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3976
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 3978
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3979
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gpc/exif/GPCExifInterface;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_7
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_8
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_a
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_b
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_c
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_d
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_f
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3947
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3949
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 3950
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_0

    .line 3994
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void

    .line 3992
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "file cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3947
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3949
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 3950
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 4025
    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4026
    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mFilename:Ljava/lang/String;

    .line 4029
    invoke-static {p1}, Lcom/gpc/exif/GPCExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4030
    iput-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 4035
    :try_start_0
    invoke-static {p1}, Lcom/gpc/exif/GPCExifInterfaceUtils$Api21Impl;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4038
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to duplicate file descriptor"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4041
    :cond_0
    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    .line 4045
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4046
    :try_start_2
    invoke-direct {p0, v2}, Lcom/gpc/exif/GPCExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4048
    invoke-static {v2}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_1

    .line 4050
    invoke-static {p1}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    .line 4048
    :goto_1
    invoke-static {v2}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_2

    .line 4050
    invoke-static {p1}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 4052
    :cond_2
    throw v0

    .line 4023
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "fileDescriptor cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4065
    invoke-direct {p0, p1, v0}, Lcom/gpc/exif/GPCExifInterface;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3947
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3949
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 3950
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 4085
    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mFilename:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 4089
    new-instance p2, Ljava/io/BufferedInputStream;

    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v2, v2

    invoke-direct {p2, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4090
    move-object p1, p2

    check-cast p1, Ljava/io/BufferedInputStream;

    invoke-static {p2}, Lcom/gpc/exif/GPCExifInterface;->isExifDataOnly(Ljava/io/BufferedInputStream;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4091
    const-string p1, "ExifInterface"

    const-string p2, "Given data does not follow the structure of an Exif-only data."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4094
    :cond_0
    iput-boolean v1, p0, Lcom/gpc/exif/GPCExifInterface;->mIsExifDataOnly:Z

    .line 4095
    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4096
    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    move-object p1, p2

    goto :goto_0

    .line 4098
    :cond_1
    instance-of p2, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz p2, :cond_2

    .line 4099
    move-object p2, p1

    check-cast p2, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p2, p0, Lcom/gpc/exif/GPCExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4100
    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 4101
    :cond_2
    instance-of p2, p1, Ljava/io/FileInputStream;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/io/FileInputStream;

    .line 4102
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/exif/GPCExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4103
    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4104
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 4106
    :cond_3
    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4107
    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 4110
    :goto_0
    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    return-void

    .line 4083
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "inputStream cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3947
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3949
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 3950
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_0

    .line 4009
    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void

    .line 4007
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 6

    .line 6781
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6782
    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6783
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 6784
    invoke-static {v0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v0

    .line 6783
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6788
    :cond_0
    const-string v0, "ImageWidth"

    invoke-virtual {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 6789
    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6790
    invoke-static {v3, v4, v5}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v5

    .line 6789
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6792
    :cond_1
    const-string v0, "ImageLength"

    invoke-virtual {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 6793
    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6794
    invoke-static {v3, v4, v5}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v5

    .line 6793
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6796
    :cond_2
    const-string v0, "Orientation"

    invoke-virtual {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 6797
    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6798
    invoke-static {v3, v4, v2}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v2

    .line 6797
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6800
    :cond_3
    const-string v0, "LightSource"

    invoke-virtual {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 6801
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6802
    invoke-static {v3, v4, v2}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v2

    .line 6801
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private convertDecimalDegree(D)Ljava/lang/String;
    .locals 8

    double-to-long v0, p1

    long-to-double v2, v0

    sub-double/2addr p1, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v4, p1, v2

    double-to-long v4, v4

    long-to-double v6, v4

    div-double/2addr v6, v2

    sub-double/2addr p1, v6

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double p1, p1, v2

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double p1, p1, v2

    .line 5390
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    .line 5391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/1,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/10000000"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 11

    .line 5357
    const-string v0, "/"

    :try_start_0
    const-string v1, ","

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 5360
    aget-object v3, p0, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 5361
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v3, v3, v6

    .line 5362
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v4, v7

    .line 5364
    aget-object v3, p0, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 5365
    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aget-object v3, v3, v6

    .line 5366
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v7, v9

    const/4 v3, 0x2

    .line 5368
    aget-object p0, p0, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 5369
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    aget-object p0, p0, v6

    .line 5370
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v7, v2

    add-double/2addr v4, v7

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v2

    add-double/2addr v4, v0

    .line 5373
    const-string p0, "S"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "W"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 5375
    :cond_0
    const-string p0, "N"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "E"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 5379
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-wide v4

    :cond_3
    :goto_1
    neg-double p0, v4

    return-wide p0

    .line 5383
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private copyChunksUpToGivenChunkType(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x4

    .line 6743
    new-array v1, v0, [B

    .line 6744
    invoke-virtual {p1, v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 6745
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Encountered invalid length while copying WebP chunks up tochunk type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/gpc/exif/GPCExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p3, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_1

    .line 6747
    const-string p3, ""

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p4, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p4, " or "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6750
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/gpc/exif/GPCExifInterface;->copyWebPChunk(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 6751
    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_0

    .line 6752
    invoke-static {v1, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    return-void
.end method

.method private copyWebPChunk(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6760
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 6761
    invoke-virtual {p2, p3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6762
    invoke-virtual {p2, v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6764
    rem-int/lit8 p3, v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-static {p1, p2, v0}, Lcom/gpc/exif/GPCExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method private getExifAttribute(Ljava/lang/String;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;
    .locals 2

    if-eqz p1, :cond_4

    .line 4159
    const-string v0, "ISOSpeedRatings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4160
    sget-boolean p1, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 4161
    const-string p1, "ExifInterface"

    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    :cond_0
    const-string p1, "PhotographicSensitivity"

    :cond_1
    const/4 v0, 0x0

    .line 4168
    :goto_0
    sget-object v1, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 4169
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 4156
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "tag shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getHeifAttributes(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5875
    const-string v0, "yes"

    .line 0
    const-string v1, "Heif meta: "

    .line 5875
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_e

    .line 5876
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 5878
    :try_start_0
    new-instance v3, Lcom/gpc/exif/GPCExifInterface$1;

    invoke-direct {v3, p0, p1}, Lcom/gpc/exif/GPCExifInterface$1;-><init>(Lcom/gpc/exif/GPCExifInterface;Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;)V

    invoke-static {v2, v3}, Lcom/gpc/exif/GPCExifInterfaceUtils$Api23Impl;->setDataSource(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V

    const/16 v3, 0x21

    .line 5932
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    .line 5934
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a

    .line 5936
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    .line 5938
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 5948
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0x1d

    .line 5949
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1e

    .line 5951
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f

    .line 5953
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 5955
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    .line 5956
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x13

    .line 5958
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x18

    .line 5960
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v5, v0

    move-object v6, v5

    :goto_0
    const/4 v7, 0x0

    if-eqz v0, :cond_2

    .line 5965
    iget-object v8, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    const-string v9, "ImageWidth"

    .line 5966
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget-object v11, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v10

    .line 5965
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v5, :cond_3

    .line 5970
    iget-object v8, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    const-string v9, "ImageLength"

    .line 5971
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget-object v11, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v10

    .line 5970
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v8, 0x6

    if-eqz v6, :cond_7

    .line 5978
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_6

    const/16 v10, 0xb4

    if-eq v9, v10, :cond_5

    const/16 v10, 0x10e

    if-eq v9, v10, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/16 v9, 0x8

    goto :goto_1

    :cond_5
    const/4 v9, 0x3

    goto :goto_1

    :cond_6
    const/4 v9, 0x6

    .line 5990
    :goto_1
    iget-object v10, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v7

    const-string v11, "Orientation"

    iget-object v12, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5991
    invoke-static {v9, v12}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v9

    .line 5990
    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    .line 5995
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5996
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v8, :cond_b

    int-to-long v9, v3

    .line 6000
    invoke-virtual {p1, v9, v10}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 6001
    new-array v9, v8, [B

    .line 6002
    invoke-virtual {p1, v9}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->read([B)I

    move-result v10

    if-ne v10, v8, :cond_a

    add-int/2addr v3, v8

    add-int/lit8 v4, v4, -0x6

    .line 6007
    sget-object v8, Lcom/gpc/exif/GPCExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v9, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 6012
    new-array v8, v4, [B

    .line 6013
    invoke-virtual {p1, v8}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->read([B)I

    move-result p1

    if-ne p1, v4, :cond_8

    .line 6017
    iput v3, p0, Lcom/gpc/exif/GPCExifInterface;->mOffsetToExifData:I

    .line 6018
    invoke-direct {p0, v8, v7}, Lcom/gpc/exif/GPCExifInterface;->readExifSegment([BI)V

    goto :goto_2

    .line 6014
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read exif"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6008
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6003
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5998
    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid exif length"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6021
    :cond_c
    :goto_2
    sget-boolean p1, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz p1, :cond_d

    .line 6022
    const-string p1, "ExifInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rotation "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6028
    :cond_d
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 6025
    :catch_0
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6028
    :goto_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 6029
    throw p1

    .line 6031
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Reading EXIF from HEIF files is supported from SDK 28 and above"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getJpegAttributes(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 5636
    sget-boolean v3, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_0

    .line 5637
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getJpegAttributes starting with: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5640
    :cond_0
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5645
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v3

    const-string v5, "Invalid marker: "

    const/4 v6, -0x1

    if-ne v3, v6, :cond_11

    .line 5649
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    const/16 v8, -0x28

    if-ne v7, v8, :cond_10

    const/4 v3, 0x2

    .line 5654
    :goto_0
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    if-ne v5, v6, :cond_f

    .line 5659
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    .line 5660
    sget-boolean v7, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 5661
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Found JPEG segment indicator: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v9, v5, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v8, -0x27

    if-eq v5, v8, :cond_e

    const/16 v8, -0x26

    if-ne v5, v8, :cond_2

    goto/16 :goto_8

    .line 5670
    :cond_2
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v9, v8, -0x2

    const/4 v10, 0x4

    add-int/2addr v3, v10

    if-eqz v7, :cond_3

    .line 5673
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "JPEG segment: "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v11, v5, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " (length: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5676
    :cond_3
    const-string v7, "Invalid length"

    if-ltz v9, :cond_d

    const/16 v11, -0x1f

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v5, v11, :cond_9

    const/4 v11, -0x2

    if-eq v5, v11, :cond_6

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    :goto_1
    move-object/from16 v20, v7

    goto/16 :goto_7

    .line 5739
    :pswitch_0
    invoke-virtual {v1, v13}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5740
    iget-object v5, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v2

    if-eq v2, v10, :cond_4

    .line 5741
    const-string v9, "ImageLength"

    goto :goto_2

    :cond_4
    const-string v9, "ThumbnailImageLength"

    .line 5742
    :goto_2
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    int-to-long v11, v11

    iget-object v13, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v13}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v11

    .line 5740
    invoke-virtual {v5, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5743
    iget-object v5, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v2

    if-eq v2, v10, :cond_5

    .line 5744
    const-string v9, "ImageWidth"

    goto :goto_3

    :cond_5
    const-string v9, "ThumbnailImageWidth"

    .line 5745
    :goto_3
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    int-to-long v10, v10

    iget-object v12, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v12}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v10

    .line 5743
    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v8, -0x7

    goto :goto_1

    .line 5714
    :cond_6
    new-array v5, v9, [B

    .line 5715
    invoke-virtual {v1, v5}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v8

    if-ne v8, v9, :cond_8

    .line 5719
    const-string v8, "UserComment"

    invoke-virtual {v0, v8}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    .line 5720
    iget-object v9, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v13

    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/gpc/exif/GPCExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v10, v5, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v10}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v9, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object/from16 v20, v7

    goto :goto_6

    .line 5716
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid exif"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5682
    :cond_9
    new-array v5, v9, [B

    .line 5683
    invoke-virtual {v1, v5}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    add-int v8, v3, v9

    .line 5687
    sget-object v10, Lcom/gpc/exif/GPCExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v5, v10}, Lcom/gpc/exif/GPCExifInterfaceUtils;->startsWith([B[B)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 5688
    array-length v11, v10

    invoke-static {v5, v11, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    add-int v3, p2, v3

    .line 5691
    array-length v9, v10

    add-int/2addr v3, v9

    iput v3, v0, Lcom/gpc/exif/GPCExifInterface;->mOffsetToExifData:I

    .line 5694
    invoke-direct {v0, v5, v2}, Lcom/gpc/exif/GPCExifInterface;->readExifSegment([BI)V

    .line 5696
    new-instance v3, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v3, v5}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Lcom/gpc/exif/GPCExifInterface;->setThumbnailData(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_4

    .line 5697
    :cond_a
    sget-object v10, Lcom/gpc/exif/GPCExifInterface;->IDENTIFIER_XMP_APP1:[B

    invoke-static {v5, v10}, Lcom/gpc/exif/GPCExifInterfaceUtils;->startsWith([B[B)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 5699
    array-length v11, v10

    add-int/2addr v3, v11

    .line 5700
    array-length v10, v10

    invoke-static {v5, v10, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 5704
    const-string v9, "Xmp"

    invoke-virtual {v0, v9}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_b

    .line 5705
    iget-object v10, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v12

    new-instance v14, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    array-length v11, v5

    move-object/from16 v20, v7

    int-to-long v6, v3

    const/4 v15, 0x1

    move-object/from16 v19, v5

    move-wide/from16 v17, v6

    move/from16 v16, v11

    invoke-direct/range {v14 .. v19}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;-><init>(IIJ[B)V

    invoke-virtual {v10, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5707
    iput-boolean v13, v0, Lcom/gpc/exif/GPCExifInterface;->mXmpIsFromSeparateMarker:Z

    goto :goto_5

    :cond_b
    :goto_4
    move-object/from16 v20, v7

    :goto_5
    move v3, v8

    :goto_6
    const/4 v9, 0x0

    :goto_7
    if-ltz v9, :cond_c

    .line 5757
    invoke-virtual {v1, v9}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    add-int/2addr v3, v9

    const/4 v6, -0x1

    goto/16 :goto_0

    .line 5755
    :cond_c
    new-instance v1, Ljava/io/IOException;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object v2, v7

    .line 5677
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5761
    :cond_e
    :goto_8
    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void

    .line 5656
    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid marker:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v3, v5, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5650
    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5646
    :cond_11
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    .line 5396
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 5397
    new-array v0, v0, [B

    .line 5398
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 5399
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 5400
    invoke-static {v0}, Lcom/gpc/exif/GPCExifInterface;->isJpegFormat([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    .line 5402
    :cond_0
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->isRafFormat([B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    return p1

    .line 5404
    :cond_1
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->isHeifFormat([B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    return p1

    .line 5406
    :cond_2
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->isOrfFormat([B)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    return p1

    .line 5408
    :cond_3
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->isRw2Format([B)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xa

    return p1

    .line 5410
    :cond_4
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->isPngFormat([B)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xd

    return p1

    .line 5412
    :cond_5
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->isWebpFormat([B)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0xe

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private getOrfAttributes(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6059
    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->getRawAttributes(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 6064
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 6065
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    .line 6068
    new-instance v1, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;

    iget-object p1, p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 6070
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6074
    sget-object p1, Lcom/gpc/exif/GPCExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v2, p1

    new-array v2, v2, [B

    .line 6075
    invoke-virtual {v1, v2}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v3, 0x0

    .line 6076
    invoke-virtual {v1, v3, v4}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 6077
    sget-object v3, Lcom/gpc/exif/GPCExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v4, v3

    new-array v4, v4, [B

    .line 6078
    invoke-virtual {v1, v4}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readFully([B)V

    .line 6080
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x8

    .line 6081
    invoke-virtual {v1, v2, v3}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    .line 6082
    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc

    .line 6083
    invoke-virtual {v1, v2, v3}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 6087
    invoke-direct {p0, v1, p1}, Lcom/gpc/exif/GPCExifInterface;->readImageFileDirectory(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 6090
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    .line 6091
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 6092
    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    .line 6093
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 6096
    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6098
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6105
    :cond_2
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    .line 6106
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    .line 6108
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5

    .line 6109
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 6114
    aget v1, p1, v1

    const/4 v2, 0x0

    aget v3, p1, v2

    if-le v1, v3, :cond_6

    const/4 v4, 0x3

    aget v4, p1, v4

    aget p1, p1, v0

    if-le v4, p1, :cond_6

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    sub-int/2addr v4, p1

    add-int/2addr v4, v0

    if-ge v1, v4, :cond_4

    add-int/2addr v1, v4

    sub-int v4, v1, v4

    sub-int/2addr v1, v4

    .line 6124
    :cond_4
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6125
    invoke-static {v1, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p1

    .line 6126
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6127
    invoke-static {v4, v0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v0

    .line 6129
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v2

    const-string v3, "ImageWidth"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6130
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v2

    const-string v1, "ImageLength"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6110
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid aspect frame values. frame="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6111
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6110
    const-string v0, "ExifInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private getPngAttributes(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6169
    sget-boolean v0, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPngAttributes starting with: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6175
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6180
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->PNG_SIGNATURE:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6181
    array-length v0, v0

    .line 6195
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x4

    .line 6198
    new-array v3, v2, [B

    .line 6199
    invoke-virtual {p1, v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v2, :cond_7

    add-int/lit8 v0, v0, 0x8

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    .line 6206
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 6207
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6211
    :cond_2
    :goto_1
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 6214
    :cond_3
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6216
    new-array v2, v1, [B

    .line 6217
    invoke-virtual {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 6223
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result p1

    .line 6225
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 6226
    invoke-virtual {v1, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 6227
    invoke-virtual {v1, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 6228
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    long-to-int v4, v3

    if-ne v4, p1, :cond_4

    .line 6234
    iput v0, p0, Lcom/gpc/exif/GPCExifInterface;->mOffsetToExifData:I

    const/4 p1, 0x0

    .line 6235
    invoke-direct {p0, v2, p1}, Lcom/gpc/exif/GPCExifInterface;->readExifSegment([BI)V

    .line 6236
    invoke-direct {p0}, Lcom/gpc/exif/GPCExifInterface;->validateImages()V

    .line 6238
    new-instance p1, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->setThumbnailData(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V

    return-void

    .line 6229
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", calculated CRC value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6231
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6218
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6219
    invoke-static {v3}, Lcom/gpc/exif/GPCExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    add-int/lit8 v1, v1, 0x4

    .line 6242
    invoke-virtual {p1, v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    add-int/2addr v0, v1

    goto/16 :goto_0

    .line 6200
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing PNG chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6249
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt PNG file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getRafAttributes(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5816
    sget-boolean v0, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    const-string v1, "ExifInterface"

    if-eqz v0, :cond_0

    .line 5817
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRafAttributes starting with: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v2, 0x54

    .line 5820
    invoke-virtual {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    const/4 v2, 0x4

    .line 5821
    new-array v3, v2, [B

    .line 5822
    new-array v4, v2, [B

    .line 5823
    new-array v2, v2, [B

    .line 5824
    invoke-virtual {p1, v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5825
    invoke-virtual {p1, v4}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5826
    invoke-virtual {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5827
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 5828
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 5829
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 5831
    new-array v4, v4, [B

    .line 5832
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p1, v5}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5833
    invoke-virtual {p1, v4}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5836
    new-instance v5, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v5, v4}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    const/4 v4, 0x5

    .line 5837
    invoke-direct {p0, v5, v3, v4}, Lcom/gpc/exif/GPCExifInterface;->getJpegAttributes(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;II)V

    .line 5840
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 5843
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5844
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    if-eqz v0, :cond_1

    .line 5846
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "numberOfDirectoryEntry: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 5852
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    .line 5853
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    .line 5854
    sget-object v6, Lcom/gpc/exif/GPCExifInterface;->TAG_RAF_IMAGE_SIZE:Lcom/gpc/exif/GPCExifInterface$ExifTag;

    iget v6, v6, Lcom/gpc/exif/GPCExifInterface$ExifTag;->number:I

    if-ne v4, v6, :cond_2

    .line 5855
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    .line 5856
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    .line 5857
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5858
    invoke-static {v2, v3}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v3

    .line 5859
    iget-object v4, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5860
    invoke-static {p1, v4}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v4

    .line 5861
    iget-object v5, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    const-string v6, "ImageLength"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5862
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v3, v0

    const-string v3, "ImageWidth"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5863
    sget-boolean v0, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 5864
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Updated to length: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5868
    :cond_2
    invoke-virtual {p1, v5}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getRawAttributes(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5766
    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->parseTiffHeaders(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V

    const/4 v0, 0x0

    .line 5769
    invoke-direct {p0, p1, v0}, Lcom/gpc/exif/GPCExifInterface;->readImageFileDirectory(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 5772
    invoke-direct {p0, p1, v0}, Lcom/gpc/exif/GPCExifInterface;->updateImageSizeValues(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V

    const/4 v0, 0x5

    .line 5773
    invoke-direct {p0, p1, v0}, Lcom/gpc/exif/GPCExifInterface;->updateImageSizeValues(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V

    const/4 v0, 0x4

    .line 5774
    invoke-direct {p0, p1, v0}, Lcom/gpc/exif/GPCExifInterface;->updateImageSizeValues(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 5777
    invoke-direct {p0}, Lcom/gpc/exif/GPCExifInterface;->validateImages()V

    .line 5779
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 5782
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 5783
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 5786
    new-instance v1, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;

    iget-object p1, p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 5788
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/4 p1, 0x6

    .line 5791
    invoke-virtual {v1, p1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->skipFully(I)V

    const/16 p1, 0x9

    .line 5794
    invoke-direct {p0, v1, p1}, Lcom/gpc/exif/GPCExifInterface;->readImageFileDirectory(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 5797
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, v1, p1

    .line 5798
    const-string v1, "ColorSpace"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 5800
    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getRw2Attributes(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6140
    sget-boolean v0, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRw2Attributes starting with: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6144
    :cond_0
    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->getRawAttributes(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 6147
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v1, "JpgFromRaw"

    .line 6148
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz p1, :cond_1

    .line 6150
    new-instance v1, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    iget-object v2, p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 6152
    iget-wide v2, p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytesOffset:J

    long-to-int p1, v2

    const/4 v2, 0x5

    invoke-direct {p0, v1, p1, v2}, Lcom/gpc/exif/GPCExifInterface;->getJpegAttributes(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;II)V

    .line 6157
    :cond_1
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v0

    const-string v0, "ISO"

    .line 6158
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 6159
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 6160
    const-string v2, "PhotographicSensitivity"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 6163
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private getStandaloneAttributes(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6037
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->skipFully(I)V

    .line 6039
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 6040
    invoke-virtual {p1, v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readFully([B)V

    .line 6042
    array-length p1, v0

    iput p1, p0, Lcom/gpc/exif/GPCExifInterface;->mOffsetToExifData:I

    const/4 p1, 0x0

    .line 6043
    invoke-direct {p0, v1, p1}, Lcom/gpc/exif/GPCExifInterface;->readExifSegment([BI)V

    return-void
.end method

.method private getWebpAttributes(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6257
    sget-boolean v0, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getWebpAttributes starting with: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6262
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6264
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6267
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 6270
    sget-object v1, Lcom/gpc/exif/GPCExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v1

    invoke-virtual {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6271
    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    :goto_0
    const/4 v2, 0x4

    .line 6285
    :try_start_0
    new-array v3, v2, [B

    .line 6286
    invoke-virtual {p1, v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v2, :cond_6

    .line 6292
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    add-int/lit8 v1, v1, 0x8

    .line 6295
    sget-object v4, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6297
    new-array v0, v2, [B

    .line 6298
    invoke-virtual {p1, v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 6303
    iput v1, p0, Lcom/gpc/exif/GPCExifInterface;->mOffsetToExifData:I

    const/4 p1, 0x0

    .line 6304
    invoke-direct {p0, v0, p1}, Lcom/gpc/exif/GPCExifInterface;->readExifSegment([BI)V

    .line 6306
    new-instance p1, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->setThumbnailData(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V

    return-void

    .line 6299
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6300
    invoke-static {v3}, Lcom/gpc/exif/GPCExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6310
    :cond_2
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/2addr v1, v2

    if-ne v1, v0, :cond_4

    return-void

    :cond_4
    if-gt v1, v0, :cond_5

    .line 6321
    invoke-virtual {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    goto :goto_0

    .line 6317
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered WebP file with invalid chunk size"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6287
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing WebP chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6328
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt WebP file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7658
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 7707
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v1, :cond_9

    .line 7659
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 7660
    aget-object v0, p0, v2

    invoke-static {v0}, Lcom/gpc/exif/GPCExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 7661
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_0

    return-object v0

    .line 7664
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_8

    .line 7665
    aget-object v1, p0, v3

    invoke-static {v1}, Lcom/gpc/exif/GPCExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 7667
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7668
    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    goto :goto_2

    .line 7669
    :cond_2
    :goto_1
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 7671
    :goto_2
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_4

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 7672
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7673
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, -0x1

    :goto_3
    if-ne v2, v6, :cond_5

    if-ne v1, v6, :cond_5

    .line 7676
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_5
    if-ne v2, v6, :cond_6

    .line 7679
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    if-ne v1, v6, :cond_7

    .line 7683
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-object v0

    .line 7690
    :cond_9
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_f

    .line 7691
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 7692
    array-length v0, p0

    if-ne v0, v4, :cond_e

    .line 7694
    :try_start_0
    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    .line 7695
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    const/16 p0, 0xa

    cmp-long v4, v0, v8

    if-ltz v4, :cond_d

    cmp-long v4, v2, v8

    if-gez v4, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x5

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v0, v8

    if-gtz v6, :cond_c

    cmp-long v0, v2, v8

    if-lez v0, :cond_b

    goto :goto_5

    .line 7702
    :cond_b
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 7700
    :cond_c
    :goto_5
    new-instance p0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 7697
    :cond_d
    :goto_6
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7707
    :catch_0
    :cond_e
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 7710
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 7711
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    cmp-long v4, v0, v8

    if-ltz v4, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v8, 0xffff

    cmp-long v6, v0, v8

    if-gtz v6, :cond_10

    .line 7712
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 7714
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez v4, :cond_11

    .line 7715
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 7717
    :cond_11
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 7722
    :catch_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 7723
    new-instance p0, Landroid/util/Pair;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 7727
    :catch_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private handleThumbnailFromJfif(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7139
    const-string v0, "JPEGInterchangeFormat"

    .line 7140
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7141
    const-string v1, "JPEGInterchangeFormatLength"

    .line 7142
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 7145
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7146
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 7148
    iget v1, p0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 7150
    iget v1, p0, Lcom/gpc/exif/GPCExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v0, v1

    :cond_0
    if-lez v0, :cond_2

    if-lez p2, :cond_2

    const/4 v1, 0x1

    .line 7154
    iput-boolean v1, p0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnail:Z

    .line 7155
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mFilename:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v1, :cond_1

    .line 7159
    new-array v1, p2, [B

    int-to-long v2, v0

    .line 7160
    invoke-virtual {p1, v2, v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skip(J)J

    .line 7161
    invoke-virtual {p1, v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 7162
    iput-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailBytes:[B

    .line 7164
    :cond_1
    iput v0, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailOffset:I

    .line 7165
    iput p2, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailLength:I

    .line 7167
    :cond_2
    sget-boolean p1, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 7168
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Setting thumbnail attributes with offset: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExifInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private handleThumbnailFromStrips(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 7177
    const-string v3, "StripOffsets"

    .line 7178
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7179
    const-string v4, "StripByteCounts"

    .line 7180
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    .line 7183
    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7184
    invoke-virtual {v3, v4}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/gpc/exif/GPCExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v3

    .line 7185
    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7186
    invoke-virtual {v2, v4}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/gpc/exif/GPCExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v2

    .line 7188
    const-string v4, "ExifInterface"

    if-eqz v3, :cond_a

    array-length v5, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v2, :cond_9

    .line 7192
    array-length v5, v2

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 7196
    :cond_1
    array-length v5, v3

    array-length v6, v2

    if-eq v5, v6, :cond_2

    .line 7197
    const-string v1, "stripOffsets and stripByteCounts should have same length."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7202
    :cond_2
    array-length v5, v2

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_3

    aget-wide v10, v2, v9

    add-long/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    long-to-int v5, v7

    .line 7208
    new-array v7, v5, [B

    const/4 v8, 0x1

    .line 7212
    iput-boolean v8, v0, Lcom/gpc/exif/GPCExifInterface;->mAreThumbnailStripsConsecutive:Z

    iput-boolean v8, v0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnailStrips:Z

    iput-boolean v8, v0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnail:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 7213
    :goto_1
    array-length v12, v3

    if-ge v9, v12, :cond_8

    .line 7214
    aget-wide v12, v3, v9

    long-to-int v13, v12

    .line 7215
    aget-wide v14, v2, v9

    long-to-int v12, v14

    .line 7219
    array-length v14, v3

    sub-int/2addr v14, v8

    if-ge v9, v14, :cond_4

    add-int v14, v13, v12

    int-to-long v14, v14

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, v3, v16

    cmp-long v18, v14, v16

    if-eqz v18, :cond_4

    .line 7221
    iput-boolean v6, v0, Lcom/gpc/exif/GPCExifInterface;->mAreThumbnailStripsConsecutive:Z

    :cond_4
    sub-int/2addr v13, v10

    if-gez v13, :cond_5

    .line 7227
    const-string v1, "Invalid strip offset value"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    int-to-long v14, v13

    .line 7230
    invoke-virtual {v1, v14, v15}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skip(J)J

    move-result-wide v16

    const-string v8, " bytes."

    cmp-long v18, v16, v14

    if-eqz v18, :cond_6

    .line 7231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to skip "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    add-int/2addr v10, v13

    .line 7236
    new-array v13, v12, [B

    .line 7237
    invoke-virtual {v1, v13}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v14

    if-eq v14, v12, :cond_7

    .line 7238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    add-int/2addr v10, v12

    .line 7244
    invoke-static {v13, v6, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v12

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x1

    goto :goto_1

    .line 7248
    :cond_8
    iput-object v7, v0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailBytes:[B

    .line 7250
    iget-boolean v1, v0, Lcom/gpc/exif/GPCExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v1, :cond_b

    .line 7251
    aget-wide v1, v3, v6

    long-to-int v2, v1

    iput v2, v0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailOffset:I

    .line 7252
    iput v5, v0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailLength:I

    return-void

    .line 7193
    :cond_9
    :goto_2
    const-string v1, "stripByteCounts should not be null or have zero length."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7189
    :cond_a
    :goto_3
    const-string v1, "stripOffsets should not be null or have zero length."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method private initForFilename(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 5340
    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 5341
    iput-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mFilename:Ljava/lang/String;

    .line 5343
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5344
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/exif/GPCExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5345
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 5347
    :cond_0
    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 5349
    :goto_0
    invoke-direct {p0, v1}, Lcom/gpc/exif/GPCExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5351
    invoke-static {v1}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v0}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 5352
    throw p1

    .line 5337
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static isExifDataOnly(Ljava/io/BufferedInputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5611
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 5612
    array-length v0, v0

    new-array v0, v0, [B

    .line 5613
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 5614
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 5615
    :goto_0
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5616
    aget-byte v3, v0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isHeifFormat([B)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5451
    :try_start_0
    new-instance v2, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5453
    :try_start_1
    invoke-virtual {v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    int-to-long v3, v1

    const/4 v1, 0x4

    .line 5454
    new-array v5, v1, [B

    .line 5455
    invoke-virtual {v2, v5}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5457
    sget-object v6, Lcom/gpc/exif/GPCExifInterface;->HEIF_TYPE_FTYP:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    .line 5512
    invoke-virtual {v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    return v0

    :cond_0
    const-wide/16 v5, 0x8

    const-wide/16 v7, 0x1

    cmp-long v9, v3, v7

    if-nez v9, :cond_1

    .line 5465
    :try_start_2
    invoke-virtual {v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v9, 0x10

    cmp-long v11, v3, v9

    if-gez v11, :cond_2

    .line 5512
    invoke-virtual {v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    return v0

    :cond_1
    move-wide v9, v5

    .line 5474
    :cond_2
    :try_start_3
    array-length v11, p1

    int-to-long v11, v11

    cmp-long v13, v3, v11

    if-lez v13, :cond_3

    .line 5475
    array-length p1, p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v3, p1

    :cond_3
    sub-long/2addr v3, v9

    cmp-long p1, v3, v5

    if-gez p1, :cond_4

    .line 5512
    invoke-virtual {v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    return v0

    .line 5486
    :cond_4
    :try_start_4
    new-array p1, v1, [B

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const-wide/16 v11, 0x4

    .line 5489
    div-long v11, v3, v11

    cmp-long v13, v5, v11

    if-gez v13, :cond_a

    .line 5490
    invoke-virtual {v2, p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v11, v1, :cond_5

    .line 5512
    invoke-virtual {v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    return v0

    :cond_5
    cmp-long v11, v5, v7

    if-nez v11, :cond_6

    goto :goto_2

    .line 5497
    :cond_6
    :try_start_5
    sget-object v11, Lcom/gpc/exif/GPCExifInterface;->HEIF_BRAND_MIF1:[B

    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_7

    const/4 v9, 0x1

    goto :goto_1

    .line 5499
    :cond_7
    sget-object v11, Lcom/gpc/exif/GPCExifInterface;->HEIF_BRAND_HEIC:[B

    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v11, :cond_8

    const/4 v10, 0x1

    :cond_8
    :goto_1
    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    .line 5512
    invoke-virtual {v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    return v12

    :cond_9
    :goto_2
    add-long/2addr v5, v7

    goto :goto_0

    :cond_a
    invoke-virtual {v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 5507
    :goto_3
    :try_start_6
    sget-boolean v2, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 5508
    const-string v2, "ExifInterface"

    const-string v3, "Exception parsing HEIF file type box."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_b
    if-eqz v1, :cond_c

    .line 5512
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    :cond_c
    :goto_4
    return v0

    :goto_5
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5515
    :cond_d
    throw p1
.end method

.method private static isJpegFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5424
    :goto_0
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->JPEG_SIGNATURE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5425
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isOrfFormat([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5531
    :try_start_0
    new-instance v2, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5534
    :try_start_1
    invoke-direct {p0, v2}, Lcom/gpc/exif/GPCExifInterface;->readByteOrder(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5536
    invoke-virtual {v2, p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5538
    invoke-virtual {v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x4f52

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5352

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 5544
    :cond_1
    invoke-virtual {v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    nop

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5546
    :cond_2
    throw p1

    :catch_1
    nop

    :goto_1
    if-eqz v1, :cond_3

    .line 5544
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    :cond_3
    return v0
.end method

.method private isPngFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5582
    :goto_0
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->PNG_SIGNATURE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5583
    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isRafFormat([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5439
    const-string v0, "FUJIFILMCCD-RAW"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5440
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 5441
    aget-byte v3, p1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isRw2Format([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5558
    :try_start_0
    new-instance v2, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5561
    :try_start_1
    invoke-direct {p0, v2}, Lcom/gpc/exif/GPCExifInterface;->readByteOrder(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5563
    invoke-virtual {v2, p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5565
    invoke-virtual {v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x55

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 5571
    :cond_0
    invoke-virtual {v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    nop

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5573
    :cond_1
    throw p1

    :catch_1
    nop

    :goto_1
    if-eqz v1, :cond_2

    .line 5571
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->close()V

    :cond_2
    return v0
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 3

    .line 4693
    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/gpc/exif/GPCExifInterfaceUtils$Api21Impl;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    nop

    .line 4696
    sget-boolean p0, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 4697
    const-string p0, "ExifInterface"

    const-string v0, "The file descriptor for the given input is not seekable"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7259
    const-string v0, "BitsPerSample"

    .line 7260
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    .line 7262
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 7264
    sget-object v1, Lcom/gpc/exif/GPCExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 7269
    :cond_0
    iget v2, p0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 7270
    const-string v2, "PhotometricInterpretation"

    .line 7271
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz p1, :cond_3

    .line 7273
    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7274
    invoke-virtual {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 7275
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 7276
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    .line 7278
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v3

    .line 7286
    :cond_3
    sget-boolean p1, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz p1, :cond_4

    .line 7287
    const-string p1, "ExifInterface"

    const-string v0, "Unsupported data type value"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private static isSupportedFormatForSavingAttributes(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSupportedMimeType(Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_f

    .line 4124
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "image/x-canon-cr2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "image/x-nikon-nrw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "image/x-nikon-nef"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "image/x-olympus-orf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "image/x-pentax-pef"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "image/png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "image/x-panasonic-rw2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "image/x-adobe-dng"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string v0, "image/webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_9
    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_a
    const-string v0, "image/heif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_b
    const-string v0, "image/heic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_c
    const-string v0, "image/x-sony-arw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_d
    const-string v0, "image/x-samsung-srw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_e
    const-string v0, "image/x-fuji-raf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    .line 4121
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "mimeType shouldn\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fc6acff -> :sswitch_e
        -0x617ac9e4 -> :sswitch_d
        -0x5f082c57 -> :sswitch_c
        -0x58a8e8f5 -> :sswitch_b
        -0x58a8e8f2 -> :sswitch_a
        -0x58a7d764 -> :sswitch_9
        -0x58a21830 -> :sswitch_8
        -0x54d6098a -> :sswitch_7
        -0x3ab85cc1 -> :sswitch_6
        -0x34686c8b -> :sswitch_5
        -0x13d592a1 -> :sswitch_4
        0x52243d4a -> :sswitch_3
        0x7d1e84e8 -> :sswitch_2
        0x7d1e868c -> :sswitch_1
        0x7dd6e2bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7295
    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7296
    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 7299
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7300
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isWebpFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5596
    :goto_0
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5597
    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5601
    :goto_1
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 5602
    sget-object v3, Lcom/gpc/exif/GPCExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v3, v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 4

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4631
    :goto_0
    :try_start_0
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4632
    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4636
    :cond_0
    iget-boolean v1, p0, Lcom/gpc/exif/GPCExifInterface;->mIsExifDataOnly:Z

    if-nez v1, :cond_1

    .line 4637
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4638
    move-object p1, v1

    check-cast p1, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v1}, Lcom/gpc/exif/GPCExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    move-object p1, v1

    .line 4641
    :cond_1
    iget v1, p0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    invoke-static {v1}, Lcom/gpc/exif/GPCExifInterface;->shouldSupportSeek(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4642
    new-instance v0, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4644
    iget-boolean p1, p0, Lcom/gpc/exif/GPCExifInterface;->mIsExifDataOnly:Z

    if-eqz p1, :cond_2

    .line 4645
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getStandaloneAttributes(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4647
    :cond_2
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    const/16 v1, 0xc

    if-ne p1, v1, :cond_3

    .line 4648
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getHeifAttributes(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    .line 4650
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getOrfAttributes(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_1

    :cond_4
    const/16 v1, 0xa

    if-ne p1, v1, :cond_5

    .line 4652
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getRw2Attributes(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4654
    :cond_5
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getRawAttributes(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 4658
    :goto_1
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface;->mOffsetToExifData:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 4659
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->setThumbnailData(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_2

    .line 4661
    :cond_6
    new-instance v1, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4662
    iget p1, p0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_7

    .line 4663
    invoke-direct {p0, v1, v0, v0}, Lcom/gpc/exif/GPCExifInterface;->getJpegAttributes(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;II)V

    goto :goto_2

    :cond_7
    const/16 v0, 0xd

    if-ne p1, v0, :cond_8

    .line 4666
    invoke-direct {p0, v1}, Lcom/gpc/exif/GPCExifInterface;->getPngAttributes(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_2

    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    .line 4668
    invoke-direct {p0, v1}, Lcom/gpc/exif/GPCExifInterface;->getRafAttributes(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_2

    :cond_9
    const/16 v0, 0xe

    if-ne p1, v0, :cond_a

    .line 4670
    invoke-direct {p0, v1}, Lcom/gpc/exif/GPCExifInterface;->getWebpAttributes(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4682
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/gpc/exif/GPCExifInterface;->addDefaultValuesForCompatibility()V

    .line 4684
    sget-boolean p1, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz p1, :cond_c

    .line 4685
    invoke-direct {p0}, Lcom/gpc/exif/GPCExifInterface;->printAttributes()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 4676
    :goto_3
    :try_start_1
    sget-boolean v0, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 4677
    const-string v1, "ExifInterface"

    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4682
    :cond_b
    invoke-direct {p0}, Lcom/gpc/exif/GPCExifInterface;->addDefaultValuesForCompatibility()V

    if-eqz v0, :cond_c

    .line 4685
    invoke-direct {p0}, Lcom/gpc/exif/GPCExifInterface;->printAttributes()V

    :cond_c
    return-void

    .line 4682
    :goto_4
    invoke-direct {p0}, Lcom/gpc/exif/GPCExifInterface;->addDefaultValuesForCompatibility()V

    .line 4684
    sget-boolean v0, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 4685
    invoke-direct {p0}, Lcom/gpc/exif/GPCExifInterface;->printAttributes()V

    .line 4687
    :cond_d
    throw p1

    .line 4627
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "inputstream shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 5266
    sget-object v1, Lcom/gpc/exif/GPCExifInterface;->NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 5270
    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 5274
    :try_start_0
    sget-object v3, Lcom/gpc/exif/GPCExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1

    .line 5276
    sget-object v3, Lcom/gpc/exif/GPCExifInterface;->sFormatterSecondary:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    .line 5281
    :cond_1
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    if-eqz p2, :cond_4

    const/4 p0, 0x1

    .line 5283
    invoke-virtual {p2, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 5284
    invoke-virtual {p2, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x4

    .line 5285
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5286
    const-string v8, "+"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "-"

    if-nez v8, :cond_2

    :try_start_1
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    const-string v8, ":"

    .line 5287
    invoke-virtual {p2, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p2, 0xe

    if-gt v5, p2, :cond_4

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v5, v6

    const p2, 0xea60

    mul-int v5, v5, p2

    .line 5289
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    :goto_0
    mul-int v5, v5, p0

    int-to-long v1, v5

    add-long/2addr v3, v1

    :cond_4
    if-eqz p1, :cond_5

    .line 5294
    invoke-static {p1}, Lcom/gpc/exif/GPCExifInterfaceUtils;->parseSubSeconds(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v3, p0

    .line 5296
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    :cond_6
    :goto_1
    return-object v0
.end method

.method private parseTiffHeaders(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6828
    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->readByteOrder(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6830
    invoke-virtual {p1, v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6833
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 6834
    iget v1, p0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6835
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid start code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6839
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_2

    .line 6845
    invoke-virtual {p1, v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    :cond_2
    return-void

    .line 6841
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid first Ifd offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private printAttributes()V
    .locals 7

    const/4 v0, 0x0

    .line 4707
    :goto_0
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4708
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The size of tag group["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4709
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4710
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 4711
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tagName: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tagType: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tagValue: \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4712
    invoke-virtual {v4, v3}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4711
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readByteOrder(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6809
    invoke-virtual {p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    const/16 v0, 0x4949

    .line 6810
    const-string v1, "ExifInterface"

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4d4d

    if-ne p1, v0, :cond_1

    .line 6817
    sget-boolean p1, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 6818
    const-string p1, "readExifSegment: Byte Align MM"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6820
    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    .line 6822
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6812
    :cond_2
    sget-boolean p1, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 6813
    const-string p1, "readExifSegment: Byte Align II"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6815
    :cond_3
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1
.end method

.method private readExifSegment([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6769
    new-instance v0, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 6773
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->parseTiffHeaders(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V

    .line 6776
    invoke-direct {p0, v0, p2}, Lcom/gpc/exif/GPCExifInterface;->readImageFileDirectory(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V

    return-void
.end method

.method private readImageFileDirectory(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 6853
    iget-object v3, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributesOffsets:Ljava/util/Set;

    iget v4, v1, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->mPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6856
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readShort()S

    move-result v3

    .line 6857
    sget-boolean v4, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    const-string v5, "ExifInterface"

    if-eqz v4, :cond_0

    .line 6858
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "numberOfDirectoryEntry: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gtz v3, :cond_1

    goto/16 :goto_11

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v6, v3, :cond_23

    .line 6867
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v12

    .line 6868
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v13

    .line 6869
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readInt()I

    move-result v14

    .line 6871
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->position()I

    move-result v15

    const-wide/16 v16, 0x0

    int-to-long v8, v15

    const-wide/16 v18, 0x4

    add-long v8, v8, v18

    .line 6874
    sget-object v15, Lcom/gpc/exif/GPCExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v15, v15, v2

    const/16 v20, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    .line 6876
    sget-boolean v15, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    const/16 v21, 0x1

    const/16 v22, 0x2

    const/4 v10, 0x3

    if-eqz v15, :cond_3

    .line 6878
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x4

    if-eqz v4, :cond_2

    .line 6879
    iget-object v11, v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v23, v7, v20

    aput-object v24, v7, v21

    aput-object v11, v7, v22

    aput-object v26, v7, v10

    aput-object v27, v7, v25

    .line 6877
    const-string v11, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const/16 v25, 0x4

    :goto_2
    const/4 v7, 0x7

    if-nez v4, :cond_5

    if-eqz v15, :cond_4

    .line 6886
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v10, "Skip the tag entry since tag number is not defined: "

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    move-wide/from16 v26, v8

    goto/16 :goto_6

    :cond_5
    if-lez v13, :cond_b

    .line 6888
    sget-object v10, Lcom/gpc/exif/GPCExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v11, v10

    if-lt v13, v11, :cond_6

    goto :goto_5

    .line 6892
    :cond_6
    invoke-virtual {v4, v13}, Lcom/gpc/exif/GPCExifInterface$ExifTag;->isFormatCompatible(I)Z

    move-result v11

    if-nez v11, :cond_7

    if-eqz v15, :cond_4

    .line 6894
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Skip the tag entry since data format ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/gpc/exif/GPCExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v11, v11, v13

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") is unexpected for tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    if-ne v13, v7, :cond_8

    .line 6900
    iget v13, v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;->primaryFormat:I

    :cond_8
    move-wide/from16 v26, v8

    int-to-long v7, v14

    .line 6902
    aget v10, v10, v13

    int-to-long v10, v10

    mul-long v7, v7, v10

    cmp-long v10, v7, v16

    if-ltz v10, :cond_a

    const-wide/32 v10, 0x7fffffff

    cmp-long v24, v7, v10

    if-lez v24, :cond_9

    goto :goto_4

    :cond_9
    const/4 v10, 0x1

    goto :goto_8

    :cond_a
    :goto_4
    if-eqz v15, :cond_d

    .line 6905
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Skip the tag entry since the number of components is invalid: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    :goto_5
    move-wide/from16 v26, v8

    if-eqz v15, :cond_c

    .line 6890
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Skip the tag entry since data format is invalid: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_6
    move-wide/from16 v7, v16

    :cond_d
    :goto_7
    const/4 v10, 0x0

    :goto_8
    if-nez v10, :cond_e

    move-wide/from16 v10, v26

    .line 6913
    invoke-virtual {v1, v10, v11}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    move/from16 v26, v3

    move/from16 v27, v6

    goto/16 :goto_10

    :cond_e
    move-wide/from16 v10, v26

    .line 6919
    const-string v9, "Compression"

    cmp-long v26, v7, v18

    if-lez v26, :cond_12

    move/from16 v26, v3

    .line 6920
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readInt()I

    move-result v3

    move/from16 v27, v6

    if-eqz v15, :cond_f

    .line 6922
    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v18, v12

    const-string v12, "seek to data offset: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_f
    move/from16 v18, v12

    .line 6924
    :goto_9
    iget v6, v0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    const/4 v12, 0x7

    if-ne v6, v12, :cond_11

    .line 6925
    const-string v6, "MakerNote"

    iget-object v12, v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 6927
    iput v3, v0, Lcom/gpc/exif/GPCExifInterface;->mOrfMakerNoteOffset:I

    goto :goto_a

    :cond_10
    const/4 v6, 0x6

    if-ne v2, v6, :cond_11

    .line 6928
    const-string v12, "ThumbnailImage"

    iget-object v6, v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 6929
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 6931
    iput v3, v0, Lcom/gpc/exif/GPCExifInterface;->mOrfThumbnailOffset:I

    .line 6932
    iput v14, v0, Lcom/gpc/exif/GPCExifInterface;->mOrfThumbnailLength:I

    .line 6934
    iget-object v6, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v12, 0x6

    .line 6935
    invoke-static {v12, v6}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v6

    .line 6936
    iget v12, v0, Lcom/gpc/exif/GPCExifInterface;->mOrfThumbnailOffset:I

    move/from16 v19, v14

    move/from16 v24, v15

    int-to-long v14, v12

    iget-object v12, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6937
    invoke-static {v14, v15, v12}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v12

    .line 6938
    iget v14, v0, Lcom/gpc/exif/GPCExifInterface;->mOrfThumbnailLength:I

    int-to-long v14, v14

    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6939
    invoke-static {v14, v15, v2}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v2

    .line 6941
    iget-object v14, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v25

    invoke-virtual {v14, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6942
    iget-object v6, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v25

    const-string v14, "JPEGInterchangeFormat"

    invoke-virtual {v6, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6944
    iget-object v6, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v25

    const-string v12, "JPEGInterchangeFormatLength"

    invoke-virtual {v6, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_11
    :goto_a
    move/from16 v19, v14

    move/from16 v24, v15

    :goto_b
    int-to-long v2, v3

    .line 6948
    invoke-virtual {v1, v2, v3}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    goto :goto_c

    :cond_12
    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v18, v12

    move/from16 v19, v14

    move/from16 v24, v15

    .line 6952
    :goto_c
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v24, :cond_13

    .line 6954
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "nextIfdType: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " byteCount: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/16 v3, 0x8

    if-eqz v2, :cond_1c

    const/4 v6, 0x3

    if-eq v13, v6, :cond_17

    const/4 v6, 0x4

    if-eq v13, v6, :cond_16

    if-eq v13, v3, :cond_15

    const/16 v3, 0x9

    if-eq v13, v3, :cond_14

    const/16 v3, 0xd

    if-eq v13, v3, :cond_14

    const-wide/16 v6, -0x1

    goto :goto_e

    .line 6975
    :cond_14
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readInt()I

    move-result v3

    goto :goto_d

    .line 6966
    :cond_15
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readShort()S

    move-result v3

    goto :goto_d

    .line 6970
    :cond_16
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    goto :goto_e

    .line 6962
    :cond_17
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    :goto_d
    int-to-long v6, v3

    :goto_e
    if-eqz v24, :cond_18

    .line 6984
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v20

    aput-object v4, v8, v21

    const-string v3, "Offset: %d, tagName: %s"

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    cmp-long v3, v6, v16

    if-lez v3, :cond_1a

    .line 6991
    iget-object v3, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributesOffsets:Ljava/util/Set;

    long-to-int v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 6992
    invoke-virtual {v1, v6, v7}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 6993
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/gpc/exif/GPCExifInterface;->readImageFileDirectory(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V

    goto :goto_f

    :cond_19
    if-eqz v24, :cond_1b

    .line 6996
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_1a
    if-eqz v24, :cond_1b

    .line 7002
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skip jump into the IFD since its offset is invalid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7006
    :cond_1b
    :goto_f
    invoke-virtual {v1, v10, v11}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_10

    .line 7010
    :cond_1c
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->position()I

    move-result v2

    iget v6, v0, Lcom/gpc/exif/GPCExifInterface;->mOffsetToExifData:I

    add-int/2addr v2, v6

    long-to-int v6, v7

    .line 7011
    new-array v6, v6, [B

    .line 7012
    invoke-virtual {v1, v6}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readFully([B)V

    .line 7013
    new-instance v14, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    int-to-long v7, v2

    move-wide/from16 v17, v7

    move v15, v13

    move/from16 v16, v19

    move-object/from16 v19, v6

    invoke-direct/range {v14 .. v19}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;-><init>(IIJ[B)V

    .line 7015
    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    iget-object v6, v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7020
    const-string v2, "DNGVersion"

    iget-object v6, v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v6, 0x3

    .line 7021
    iput v6, v0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    .line 7027
    :cond_1d
    const-string v2, "Make"

    iget-object v6, v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "Model"

    iget-object v6, v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7028
    invoke-virtual {v14, v2}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "PENTAX"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1f
    iget-object v2, v4, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 7029
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7030
    invoke-virtual {v14, v2}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    const v4, 0xffff

    if-ne v2, v4, :cond_21

    .line 7031
    :cond_20
    iput v3, v0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    .line 7035
    :cond_21
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->position()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v10

    if-eqz v4, :cond_22

    .line 7036
    invoke-virtual {v1, v10, v11}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    :cond_22
    :goto_10
    add-int/lit8 v6, v27, 0x1

    int-to-short v6, v6

    move/from16 v2, p2

    move/from16 v3, v26

    goto/16 :goto_0

    :cond_23
    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    .line 7040
    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 7041
    sget-boolean v3, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v3, :cond_24

    .line 7042
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v20

    const-string v4, "nextIfdOffset: %d"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    int-to-long v8, v2

    cmp-long v4, v8, v16

    if-lez v4, :cond_27

    .line 7048
    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributesOffsets:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 7049
    invoke-virtual {v1, v8, v9}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 7050
    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x4

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 7052
    invoke-direct {v0, v1, v6}, Lcom/gpc/exif/GPCExifInterface;->readImageFileDirectory(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V

    return-void

    .line 7053
    :cond_25
    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 7054
    invoke-direct {v0, v1, v7}, Lcom/gpc/exif/GPCExifInterface;->readImageFileDirectory(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V

    return-void

    :cond_26
    if-eqz v3, :cond_28

    .line 7058
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    if-eqz v3, :cond_28

    .line 7064
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_11
    return-void
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 4616
    :goto_0
    sget-object v1, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4617
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 8111
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8112
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8113
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 8114
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 8113
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8115
    iget-object p3, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p3, p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private retrieveJpegImageSize(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7079
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    .line 7080
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7081
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    .line 7082
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 7086
    :cond_0
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 7087
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7088
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "JPEGInterchangeFormatLength"

    .line 7089
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 7092
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7093
    invoke-virtual {v0, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 7094
    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7095
    invoke-virtual {v0, v2}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    int-to-long v2, v1

    .line 7098
    invoke-virtual {p1, v2, v3}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 7099
    new-array v0, v0, [B

    .line 7100
    invoke-virtual {p1, v0}, Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;->read([B)I

    .line 7101
    new-instance p1, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1, v1, p2}, Lcom/gpc/exif/GPCExifInterface;->getJpegAttributes(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;II)V

    :cond_1
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6336
    sget-boolean v0, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "saveJpegAttributes starting with (inputStream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6340
    :cond_0
    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6341
    new-instance p1, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p1, p2, v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6343
    invoke-virtual {v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result p2

    const-string v1, "Invalid marker"

    const/4 v2, -0x1

    if-ne p2, v2, :cond_d

    .line 6346
    invoke-virtual {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6347
    invoke-virtual {v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result p2

    const/16 v3, -0x28

    if-ne p2, v3, :cond_c

    .line 6350
    invoke-virtual {p1, v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6356
    const-string p2, "Xmp"

    invoke-virtual {p0, p2}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/gpc/exif/GPCExifInterface;->mXmpIsFromSeparateMarker:Z

    if-eqz v3, :cond_1

    .line 6357
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v4

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 6361
    :goto_0
    invoke-virtual {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 v5, -0x1f

    .line 6362
    invoke-virtual {p1, v5}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6363
    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->writeExifSegment(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;)I

    if-eqz v3, :cond_2

    .line 6367
    iget-object v6, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v4

    invoke-virtual {v6, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 p2, 0x1000

    .line 6370
    new-array v3, p2, [B

    .line 6373
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v6

    if-ne v6, v2, :cond_b

    .line 6377
    invoke-virtual {v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v6

    const/16 v7, -0x27

    if-eq v6, v7, :cond_a

    const/16 v7, -0x26

    if-eq v6, v7, :cond_a

    .line 6378
    const-string v7, "Invalid length"

    if-eq v6, v5, :cond_5

    .line 6421
    invoke-virtual {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6422
    invoke-virtual {p1, v6}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6423
    invoke-virtual {v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v6

    .line 6424
    invoke-virtual {p1, v6}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_4

    :goto_2
    if-lez v6, :cond_3

    .line 6431
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 6430
    invoke-virtual {v0, v3, v4, v7}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_3

    .line 6432
    invoke-virtual {p1, v3, v4, v7}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v6, v7

    goto :goto_2

    .line 6427
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6380
    :cond_5
    invoke-virtual {v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v9, v8, -0x2

    if-ltz v9, :cond_9

    const/4 v7, 0x6

    .line 6384
    new-array v10, v7, [B

    if-lt v9, v7, :cond_7

    .line 6386
    invoke-virtual {v0, v10}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v11

    if-ne v11, v7, :cond_6

    .line 6389
    sget-object v11, Lcom/gpc/exif/GPCExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_7

    add-int/lit8 v8, v8, -0x8

    .line 6391
    invoke-virtual {v0, v8}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    goto :goto_1

    .line 6387
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6396
    :cond_7
    invoke-virtual {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6397
    invoke-virtual {p1, v6}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6398
    invoke-virtual {p1, v8}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    if-lt v9, v7, :cond_8

    add-int/lit8 v9, v8, -0x8

    .line 6401
    invoke-virtual {p1, v10}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_8
    :goto_3
    if-lez v9, :cond_3

    .line 6405
    invoke-static {v9, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 6404
    invoke-virtual {v0, v3, v4, v6}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_3

    .line 6406
    invoke-virtual {p1, v3, v4, v6}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v9, v6

    goto :goto_3

    .line 6382
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6413
    :cond_a
    invoke-virtual {p1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6414
    invoke-virtual {p1, v6}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6416
    invoke-static {v0, p1}, Lcom/gpc/exif/GPCExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    .line 6375
    :cond_b
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6348
    :cond_c
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6344
    :cond_d
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6443
    sget-boolean v0, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "savePngAttributes starting with (inputStream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6447
    :cond_0
    new-instance v0, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6448
    new-instance p1, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p1, p2, v1}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6452
    sget-object p2, Lcom/gpc/exif/GPCExifInterface;->PNG_SIGNATURE:[B

    array-length v1, p2

    invoke-static {v0, p1, v1}, Lcom/gpc/exif/GPCExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6460
    iget v1, p0, Lcom/gpc/exif/GPCExifInterface;->mOffsetToExifData:I

    if-nez v1, :cond_1

    .line 6462
    invoke-virtual {v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result p2

    .line 6463
    invoke-virtual {p1, p2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    add-int/lit8 p2, p2, 0x8

    .line 6464
    invoke-static {v0, p1, p2}, Lcom/gpc/exif/GPCExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    goto :goto_0

    .line 6468
    :cond_1
    array-length p2, p2

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x8

    .line 6471
    invoke-static {v0, p1, v1}, Lcom/gpc/exif/GPCExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6474
    invoke-virtual {v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result p2

    add-int/lit8 p2, p2, 0x8

    .line 6475
    invoke-virtual {v0, p2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    :goto_0
    const/4 p2, 0x0

    .line 6484
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6485
    :try_start_1
    new-instance p2, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p2, v1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6490
    invoke-direct {p0, p2}, Lcom/gpc/exif/GPCExifInterface;->writeExifSegment(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;)I

    .line 6491
    iget-object p2, p2, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast p2, Ljava/io/ByteArrayOutputStream;

    .line 6492
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 6495
    invoke-virtual {p1, p2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6498
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 6499
    array-length v3, p2

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    invoke-virtual {v2, p2, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 6500
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int p2, v2

    invoke-virtual {p1, p2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6502
    invoke-static {v1}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6506
    invoke-static {v0, p1}, Lcom/gpc/exif/GPCExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    :catchall_0
    move-exception p1

    move-object p2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 6502
    :goto_1
    invoke-static {p2}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6503
    throw p1
.end method

.method private saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 6543
    sget-boolean v3, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 6544
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveWebpAttributes starting with (inputStream: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", outputStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExifInterface"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6547
    :cond_0
    new-instance v3, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v0, v4}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 6549
    new-instance v4, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v4, v2, v5}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6553
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v5, v2

    invoke-static {v3, v4, v5}, Lcom/gpc/exif/GPCExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6555
    sget-object v5, Lcom/gpc/exif/GPCExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v6, v5

    const/4 v7, 0x4

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    const/4 v6, 0x0

    .line 6560
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6561
    :try_start_1
    new-instance v9, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v9, v8, v10}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6565
    iget v10, v1, Lcom/gpc/exif/GPCExifInterface;->mOffsetToExifData:I

    const/16 v11, 0x8

    if-eqz v10, :cond_1

    .line 6568
    array-length v0, v2

    add-int/2addr v0, v7

    array-length v2, v5

    add-int/2addr v0, v2

    sub-int/2addr v10, v0

    sub-int/2addr v10, v11

    .line 6570
    invoke-static {v3, v9, v10}, Lcom/gpc/exif/GPCExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6575
    invoke-virtual {v3, v7}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6576
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 6577
    invoke-virtual {v3, v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 6580
    invoke-direct {v1, v9}, Lcom/gpc/exif/GPCExifInterface;->writeExifSegment(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;)I

    goto/16 :goto_6

    .line 6583
    :cond_1
    new-array v2, v7, [B

    .line 6584
    invoke-virtual {v3, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-ne v5, v7, :cond_10

    .line 6589
    sget-object v5, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_6

    .line 6591
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 6593
    rem-int/lit8 v10, v2, 0x2

    if-ne v10, v13, :cond_2

    add-int/lit8 v10, v2, 0x1

    goto :goto_0

    :cond_2
    move v10, v2

    :goto_0
    new-array v10, v10, [B

    .line 6594
    invoke-virtual {v3, v10}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 6597
    aget-byte v14, v10, v12

    or-int/2addr v11, v14

    int-to-byte v11, v11

    aput-byte v11, v10, v12

    shr-int/2addr v11, v13

    and-int/2addr v11, v13

    if-ne v11, v13, :cond_3

    const/4 v12, 0x1

    .line 6603
    :cond_3
    invoke-virtual {v9, v5}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6604
    invoke-virtual {v9, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6605
    invoke-virtual {v9, v10}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    if-eqz v12, :cond_5

    .line 6615
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    invoke-direct {v1, v3, v9, v2, v6}, Lcom/gpc/exif/GPCExifInterface;->copyChunksUpToGivenChunkType(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 6619
    :goto_1
    new-array v2, v7, [B

    .line 6621
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 6622
    sget-object v5, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_4

    .line 6624
    invoke-direct {v1, v9}, Lcom/gpc/exif/GPCExifInterface;->writeExifSegment(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;)I

    goto/16 :goto_6

    .line 6627
    :cond_4
    invoke-direct {v1, v3, v9, v2}, Lcom/gpc/exif/GPCExifInterface;->copyWebPChunk(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;[B)V

    goto :goto_1

    .line 6631
    :cond_5
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-direct {v1, v3, v9, v0, v2}, Lcom/gpc/exif/GPCExifInterface;->copyChunksUpToGivenChunkType(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 6633
    invoke-direct {v1, v9}, Lcom/gpc/exif/GPCExifInterface;->writeExifSegment(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;)I

    goto/16 :goto_6

    .line 6635
    :cond_6
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 6636
    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 6637
    :cond_7
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 6640
    rem-int/lit8 v10, v6, 0x2

    if-ne v10, v13, :cond_8

    add-int/lit8 v10, v6, 0x1

    goto :goto_2

    :cond_8
    move v10, v6

    :goto_2
    const/4 v14, 0x3

    .line 6650
    new-array v15, v14, [B

    .line 6652
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v16

    const/16 p2, 0x4

    const/16 v7, 0x2f

    if-eqz v16, :cond_a

    .line 6653
    invoke-virtual {v3, v15}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 6656
    new-array v13, v14, [B

    const/16 v16, 0x8

    .line 6657
    invoke-virtual {v3, v13}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v11

    if-ne v11, v14, :cond_9

    sget-object v11, Lcom/gpc/exif/GPCExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 6658
    invoke-static {v11, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 6664
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    shl-int/lit8 v13, v11, 0x12

    shr-int/lit8 v13, v13, 0x12

    shl-int/lit8 v14, v11, 0x2

    shr-int/lit8 v14, v14, 0x12

    add-int/lit8 v10, v10, -0xa

    goto :goto_3

    .line 6659
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered error while checking VP8 signature"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/16 v16, 0x8

    .line 6668
    sget-object v11, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v2, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 6670
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v11

    if-ne v11, v7, :cond_b

    .line 6677
    invoke-virtual {v3}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    shl-int/lit8 v14, v11, 0x12

    shr-int/lit8 v14, v14, 0x12

    add-int/2addr v14, v13

    shl-int/lit8 v17, v11, 0x4

    shr-int/lit8 v17, v17, 0x12

    add-int/lit8 v13, v17, 0x1

    and-int/lit8 v17, v11, 0x8

    add-int/lit8 v10, v10, -0x5

    move/from16 v20, v14

    move v14, v13

    move/from16 v13, v20

    goto :goto_4

    .line 6672
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered error while checking VP8L signature"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    const/16 v17, 0x0

    .line 6688
    :goto_4
    invoke-virtual {v9, v5}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    const/16 v5, 0xa

    .line 6689
    invoke-virtual {v9, v5}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6690
    new-array v5, v5, [B

    .line 6692
    aget-byte v18, v5, v12

    const/16 v19, 0x0

    or-int/lit8 v12, v18, 0x8

    int-to-byte v12, v12

    aput-byte v12, v5, v19

    shl-int/lit8 v17, v17, 0x4

    or-int v12, v12, v17

    int-to-byte v12, v12

    .line 6694
    aput-byte v12, v5, v19

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v14, v14, -0x1

    int-to-byte v12, v13

    .line 6698
    aput-byte v12, v5, p2

    shr-int/lit8 v12, v13, 0x8

    int-to-byte v12, v12

    const/16 v17, 0x5

    .line 6699
    aput-byte v12, v5, v17

    shr-int/lit8 v12, v13, 0x10

    int-to-byte v12, v12

    const/4 v13, 0x6

    .line 6700
    aput-byte v12, v5, v13

    const/4 v12, 0x7

    int-to-byte v13, v14

    .line 6701
    aput-byte v13, v5, v12

    shr-int/lit8 v12, v14, 0x8

    int-to-byte v12, v12

    .line 6702
    aput-byte v12, v5, v16

    shr-int/lit8 v12, v14, 0x10

    int-to-byte v12, v12

    const/16 v13, 0x9

    .line 6703
    aput-byte v12, v5, v13

    .line 6704
    invoke-virtual {v9, v5}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6707
    invoke-virtual {v9, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6708
    invoke-virtual {v9, v6}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6709
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6710
    invoke-virtual {v9, v15}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6711
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-virtual {v9, v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6712
    invoke-virtual {v9, v11}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_5

    .line 6713
    :cond_d
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6714
    invoke-virtual {v9, v7}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write(I)V

    .line 6715
    invoke-virtual {v9, v11}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6717
    :cond_e
    :goto_5
    invoke-static {v3, v9, v10}, Lcom/gpc/exif/GPCExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6720
    invoke-direct {v1, v9}, Lcom/gpc/exif/GPCExifInterface;->writeExifSegment(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;)I

    .line 6725
    :cond_f
    :goto_6
    invoke-static {v3, v9}, Lcom/gpc/exif/GPCExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 6728
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v3, v2

    add-int/2addr v0, v3

    invoke-virtual {v4, v0}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6730
    invoke-virtual {v4, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6731
    invoke-virtual {v8, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6735
    invoke-static {v8}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 6585
    :cond_10
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered invalid length while parsing WebP chunk type"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v6, v8

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v6, v8

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    .line 6733
    :goto_7
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to save WebP file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6735
    :goto_8
    invoke-static {v6}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6736
    throw v0
.end method

.method private setThumbnailData(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7109
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 7111
    const-string v1, "Compression"

    .line 7112
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    const/4 v2, 0x6

    if-eqz v1, :cond_3

    .line 7114
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailCompression:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 7117
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/gpc/exif/GPCExifInterface;->handleThumbnailFromJfif(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    return-void

    .line 7122
    :cond_1
    invoke-direct {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7123
    invoke-direct {p0, p1, v0}, Lcom/gpc/exif/GPCExifInterface;->handleThumbnailFromStrips(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_2
    :goto_0
    return-void

    .line 7130
    :cond_3
    iput v2, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailCompression:I

    .line 7131
    invoke-direct {p0, p1, v0}, Lcom/gpc/exif/GPCExifInterface;->handleThumbnailFromJfif(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    return-void
.end method

.method private static shouldSupportSeek(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private swapBasedOnImageSize(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8071
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "ExifInterface"

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 8078
    :cond_0
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 8079
    const-string v2, "ImageLength"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 8080
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p1

    .line 8081
    const-string v4, "ImageWidth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 8082
    iget-object v5, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 8083
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 8084
    iget-object v5, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 8085
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz v0, :cond_4

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    if-nez v4, :cond_2

    goto :goto_0

    .line 8096
    :cond_2
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 8097
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 8098
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 8099
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v3}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v2, :cond_6

    if-ge v1, v3, :cond_6

    .line 8103
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    .line 8104
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 8105
    aput-object v1, v0, p2

    return-void

    .line 8092
    :cond_3
    :goto_0
    sget-boolean p1, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 8093
    const-string p1, "Second image does not contain valid size information"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8088
    :cond_4
    :goto_1
    sget-boolean p1, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 8089
    const-string p1, "First image does not contain valid size information"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8072
    :cond_5
    :goto_2
    sget-boolean p1, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 8073
    const-string p1, "Cannot perform swap since only one image data exists"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private updateImageSizeValues(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7367
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 7368
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7370
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 7371
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7372
    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 7373
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7374
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 7375
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7376
    iget-object v4, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 7377
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7379
    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v0, :cond_5

    .line 7382
    iget p1, v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->format:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v7, "Invalid crop size values. cropSize="

    const-string v8, "ExifInterface"

    if-ne p1, v1, :cond_2

    .line 7383
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7384
    invoke-virtual {v0, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/gpc/exif/GPCExifInterface$Rational;

    if-eqz p1, :cond_1

    .line 7385
    array-length v0, p1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 7390
    :cond_0
    aget-object v0, p1, v3

    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7391
    invoke-static {v0, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createURational(Lcom/gpc/exif/GPCExifInterface$Rational;Ljava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v0

    .line 7392
    aget-object p1, p1, v2

    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7393
    invoke-static {p1, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createURational(Lcom/gpc/exif/GPCExifInterface$Rational;Ljava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p1

    goto :goto_1

    .line 7386
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7387
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7386
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7395
    :cond_2
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7396
    invoke-virtual {v0, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    .line 7397
    array-length v0, p1

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 7402
    :cond_3
    aget v0, p1, v3

    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7403
    invoke-static {v0, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v0

    .line 7404
    aget p1, p1, v2

    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7405
    invoke-static {p1, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p1

    .line 7407
    :goto_1
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7408
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7398
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7399
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7398
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 7412
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 7413
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7414
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 7415
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_6

    if-le v1, v2, :cond_6

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 7419
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7420
    invoke-static {v0, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p1

    .line 7421
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7422
    invoke-static {v1, v0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v0

    .line 7423
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7424
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void

    .line 7427
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/gpc/exif/GPCExifInterface;->retrieveJpegImageSize(Lcom/gpc/exif/GPCExifInterface$SeekableByteOrderedDataInputStream;I)V

    return-void
.end method

.method private validateImages()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 7311
    invoke-direct {p0, v0, v1}, Lcom/gpc/exif/GPCExifInterface;->swapBasedOnImageSize(II)V

    const/4 v2, 0x4

    .line 7312
    invoke-direct {p0, v0, v2}, Lcom/gpc/exif/GPCExifInterface;->swapBasedOnImageSize(II)V

    .line 7313
    invoke-direct {p0, v1, v2}, Lcom/gpc/exif/GPCExifInterface;->swapBasedOnImageSize(II)V

    .line 7319
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "PixelXDimension"

    .line 7320
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7321
    iget-object v5, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    const-string v5, "PixelYDimension"

    .line 7322
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7323
    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 7324
    iget-object v7, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7325
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7330
    :cond_0
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7331
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/gpc/exif/GPCExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7332
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v3, v1

    aput-object v4, v3, v2

    .line 7333
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v1

    .line 7338
    :cond_1
    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lcom/gpc/exif/GPCExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7339
    const-string v3, "ExifInterface"

    const-string v4, "No image meets the size requirements of a thumbnail image."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7343
    :cond_2
    const-string v3, "ThumbnailOrientation"

    const-string v4, "Orientation"

    invoke-direct {p0, v0, v3, v4}, Lcom/gpc/exif/GPCExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7344
    const-string v7, "ThumbnailImageLength"

    invoke-direct {p0, v0, v7, v5}, Lcom/gpc/exif/GPCExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7345
    const-string v8, "ThumbnailImageWidth"

    invoke-direct {p0, v0, v8, v6}, Lcom/gpc/exif/GPCExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7346
    invoke-direct {p0, v1, v3, v4}, Lcom/gpc/exif/GPCExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7347
    invoke-direct {p0, v1, v7, v5}, Lcom/gpc/exif/GPCExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7348
    invoke-direct {p0, v1, v8, v6}, Lcom/gpc/exif/GPCExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7349
    invoke-direct {p0, v2, v4, v3}, Lcom/gpc/exif/GPCExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7350
    invoke-direct {p0, v2, v5, v7}, Lcom/gpc/exif/GPCExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 7351
    invoke-direct {p0, v2, v6, v8}, Lcom/gpc/exif/GPCExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeExifSegment(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7434
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v3, v2

    new-array v3, v3, [I

    .line 7435
    array-length v2, v2

    new-array v2, v2, [I

    .line 7438
    sget-object v4, Lcom/gpc/exif/GPCExifInterface;->EXIF_POINTER_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v4, v7

    .line 7439
    iget-object v8, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v8}, Lcom/gpc/exif/GPCExifInterface;->removeAttribute(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 7442
    :cond_0
    iget-boolean v4, v0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnail:Z

    const-string v5, "StripByteCounts"

    const-string v7, "JPEGInterchangeFormatLength"

    const-string v8, "StripOffsets"

    const-string v9, "JPEGInterchangeFormat"

    if-eqz v4, :cond_2

    .line 7443
    iget-boolean v4, v0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_1

    .line 7444
    invoke-direct {v0, v8}, Lcom/gpc/exif/GPCExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 7445
    invoke-direct {v0, v5}, Lcom/gpc/exif/GPCExifInterface;->removeAttribute(Ljava/lang/String;)V

    goto :goto_1

    .line 7447
    :cond_1
    invoke-direct {v0, v9}, Lcom/gpc/exif/GPCExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 7448
    invoke-direct {v0, v7}, Lcom/gpc/exif/GPCExifInterface;->removeAttribute(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 7453
    :goto_2
    sget-object v10, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v10, v10

    if-ge v4, v10, :cond_5

    .line 7454
    iget-object v10, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_4

    aget-object v13, v10, v12

    .line 7455
    check-cast v13, Ljava/util/Map$Entry;

    .line 7456
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_3

    .line 7457
    iget-object v14, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v4

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 7464
    :cond_5
    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v10, 0x1

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v11, 0x0

    if-nez v4, :cond_6

    .line 7465
    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v13, Lcom/gpc/exif/GPCExifInterface;->EXIF_POINTER_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    aget-object v13, v13, v10

    iget-object v13, v13, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v14, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7466
    invoke-static {v11, v12, v14}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v14

    .line 7465
    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7468
    :cond_6
    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 7469
    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v14, Lcom/gpc/exif/GPCExifInterface;->EXIF_POINTER_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    aget-object v14, v14, v13

    iget-object v14, v14, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v15, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7470
    invoke-static {v11, v12, v15}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v15

    .line 7469
    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7472
    :cond_7
    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v14, 0x3

    aget-object v4, v4, v14

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 7473
    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v10

    sget-object v15, Lcom/gpc/exif/GPCExifInterface;->EXIF_POINTER_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    aget-object v15, v15, v14

    iget-object v15, v15, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    const/16 v16, 0x2

    iget-object v13, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7474
    invoke-static {v11, v12, v13}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v13

    .line 7473
    invoke-virtual {v4, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    const/16 v16, 0x2

    .line 7476
    :goto_4
    iget-boolean v4, v0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnail:Z

    const/4 v13, 0x4

    if-eqz v4, :cond_a

    .line 7477
    iget-boolean v4, v0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_9

    .line 7478
    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v13

    iget-object v7, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7479
    invoke-static {v6, v7}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v7

    .line 7478
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7480
    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v13

    iget v7, v0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailLength:I

    iget-object v15, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7481
    invoke-static {v7, v15}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v7

    .line 7480
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 7483
    :cond_9
    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v13

    iget-object v5, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7484
    invoke-static {v11, v12, v5}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v5

    .line 7483
    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7485
    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v13

    iget v5, v0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailLength:I

    const/16 v17, 0x3

    int-to-long v14, v5

    iget-object v5, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7486
    invoke-static {v14, v15, v5}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v5

    .line 7485
    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    :goto_5
    const/16 v17, 0x3

    :goto_6
    const/4 v4, 0x0

    .line 7492
    :goto_7
    sget-object v5, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_d

    .line 7494
    iget-object v5, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :cond_b
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 7495
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7496
    invoke-virtual {v14}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->size()I

    move-result v14

    if-le v14, v13, :cond_b

    add-int/2addr v7, v14

    goto :goto_8

    .line 7501
    :cond_c
    aget v5, v2, v4

    add-int/2addr v5, v7

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 7508
    :goto_9
    sget-object v7, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v7, v7

    if-ge v5, v7, :cond_f

    .line 7509
    iget-object v7, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 7510
    aput v4, v3, v5

    .line 7511
    iget-object v7, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0xc

    add-int/lit8 v7, v7, 0x6

    aget v14, v2, v5

    add-int/2addr v7, v14

    add-int/2addr v4, v7

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 7514
    :cond_f
    iget-boolean v5, v0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnail:Z

    if-eqz v5, :cond_11

    .line 7516
    iget-boolean v5, v0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnailStrips:Z

    if-eqz v5, :cond_10

    .line 7517
    iget-object v5, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v13

    iget-object v7, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7518
    invoke-static {v4, v7}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v7

    .line 7517
    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 7520
    :cond_10
    iget-object v5, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v13

    int-to-long v7, v4

    iget-object v14, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7521
    invoke-static {v7, v8, v14}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v7

    .line 7520
    invoke-virtual {v5, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7523
    :goto_a
    iput v4, v0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailOffset:I

    .line 7524
    iget v5, v0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailLength:I

    add-int/2addr v4, v5

    .line 7528
    :cond_11
    iget v5, v0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    if-ne v5, v13, :cond_12

    add-int/lit8 v4, v4, 0x8

    .line 7532
    :cond_12
    sget-boolean v5, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v5, :cond_13

    const/4 v5, 0x0

    .line 7533
    :goto_b
    sget-object v7, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v7, v7

    if-ge v5, v7, :cond_13

    .line 7535
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v8, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget v14, v2, v5

    .line 7536
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v18, 0x1

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v6

    aput-object v8, v10, v18

    aput-object v9, v10, v16

    aput-object v14, v10, v17

    aput-object v15, v10, v13

    .line 7534
    const-string v7, "index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d"

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ExifInterface"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x1

    goto :goto_b

    :cond_13
    const/16 v18, 0x1

    .line 7541
    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 7542
    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    sget-object v5, Lcom/gpc/exif/GPCExifInterface;->EXIF_POINTER_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    aget-object v5, v5, v18

    iget-object v5, v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v7, v3, v18

    int-to-long v7, v7

    iget-object v9, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7543
    invoke-static {v7, v8, v9}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v7

    .line 7542
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7545
    :cond_14
    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 7546
    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    sget-object v5, Lcom/gpc/exif/GPCExifInterface;->EXIF_POINTER_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    aget-object v5, v5, v16

    iget-object v5, v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v7, v3, v16

    int-to-long v7, v7

    iget-object v9, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7547
    invoke-static {v7, v8, v9}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v7

    .line 7546
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7549
    :cond_15
    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 7550
    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v18

    sget-object v5, Lcom/gpc/exif/GPCExifInterface;->EXIF_POINTER_TAGS:[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    aget-object v5, v5, v17

    iget-object v5, v5, Lcom/gpc/exif/GPCExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v7, v3, v17

    int-to-long v7, v7

    iget-object v9, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v9}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7554
    :cond_16
    iget v2, v0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    const/16 v5, 0xe

    if-eq v2, v13, :cond_19

    const/16 v7, 0xd

    if-eq v2, v7, :cond_18

    if-eq v2, v5, :cond_17

    goto :goto_c

    .line 7567
    :cond_17
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 7568
    invoke-virtual {v1, v4}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_c

    .line 7562
    :cond_18
    invoke-virtual {v1, v4}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 7563
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    goto :goto_c

    .line 7557
    :cond_19
    invoke-virtual {v1, v4}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7558
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 7573
    :goto_c
    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v7, :cond_1a

    const/16 v2, 0x4d4d

    goto :goto_d

    :cond_1a
    const/16 v2, 0x4949

    :goto_d
    invoke-virtual {v1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 7575
    iget-object v2, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/16 v2, 0x2a

    .line 7576
    invoke-virtual {v1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    const-wide/16 v7, 0x8

    .line 7577
    invoke-virtual {v1, v7, v8}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const/4 v2, 0x0

    .line 7580
    :goto_e
    sget-object v7, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v7, v7

    if-ge v2, v7, :cond_21

    .line 7581
    iget-object v7, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_20

    .line 7584
    iget-object v7, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7587
    aget v7, v3, v2

    add-int/lit8 v7, v7, 0x2

    iget-object v8, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0xc

    add-int/2addr v7, v8

    add-int/2addr v7, v13

    .line 7588
    iget-object v8, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1b
    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 7590
    sget-object v10, Lcom/gpc/exif/GPCExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v10, v10, v2

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    .line 7591
    iget v10, v10, Lcom/gpc/exif/GPCExifInterface$ExifTag;->number:I

    .line 7592
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7593
    invoke-virtual {v9}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->size()I

    move-result v14

    .line 7595
    invoke-virtual {v1, v10}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7596
    iget v10, v9, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v10}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7597
    iget v10, v9, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v10}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    if-le v14, v13, :cond_1c

    int-to-long v9, v7

    .line 7599
    invoke-virtual {v1, v9, v10}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    add-int/2addr v7, v14

    goto :goto_f

    .line 7602
    :cond_1c
    iget-object v9, v9, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v9}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    if-ge v14, v13, :cond_1b

    :goto_10
    if-ge v14, v13, :cond_1b

    .line 7606
    invoke-virtual {v1, v6}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    :cond_1d
    if-nez v2, :cond_1e

    .line 7615
    iget-object v7, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v13

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 7616
    aget v7, v3, v13

    int-to-long v7, v7

    invoke-virtual {v1, v7, v8}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    goto :goto_11

    .line 7618
    :cond_1e
    invoke-virtual {v1, v11, v12}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 7622
    :goto_11
    iget-object v7, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1f
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 7623
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 7625
    iget-object v9, v8, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    array-length v9, v9

    if-le v9, v13, :cond_1f

    .line 7626
    iget-object v9, v8, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    iget-object v8, v8, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    array-length v8, v8

    invoke-virtual {v1, v9, v6, v8}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    goto :goto_12

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    .line 7633
    :cond_21
    iget-boolean v2, v0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnail:Z

    if-eqz v2, :cond_22

    .line 7634
    invoke-virtual {v0}, Lcom/gpc/exif/GPCExifInterface;->getThumbnailBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 7638
    :cond_22
    iget v2, v0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    if-ne v2, v5, :cond_23

    rem-int/lit8 v2, v4, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 7639
    invoke-virtual {v1, v6}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 7643
    :cond_23
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return v4
.end method


# virtual methods
.method public flipHorizontally()V
    .locals 3

    .line 4527
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/gpc/exif/GPCExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x2

    .line 4559
    :goto_0
    :pswitch_7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public flipVertically()V
    .locals 3

    .line 4488
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/gpc/exif/GPCExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x4

    .line 4520
    :goto_0
    :pswitch_7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAltitude(D)D
    .locals 7

    .line 5166
    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1, v2}, Lcom/gpc/exif/GPCExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 5167
    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/gpc/exif/GPCExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_1

    if-ltz v2, :cond_1

    const/4 p1, 0x1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    int-to-double p1, v3

    mul-double v0, v0, p1

    return-wide v0

    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-eqz p1, :cond_6

    .line 4188
    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->getExifAttribute(Ljava/lang/String;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4190
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4191
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4193
    :cond_0
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4195
    iget p1, v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->format:I

    const/4 v2, 0x5

    const-string v3, "ExifInterface"

    if-eq p1, v2, :cond_1

    iget p1, v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->format:I

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    .line 4197
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "GPS Timestamp format is not rational. format="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->format:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4200
    :cond_1
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/gpc/exif/GPCExifInterface$Rational;

    if-eqz p1, :cond_3

    .line 4201
    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4205
    aget-object v1, p1, v0

    iget-wide v3, v1, Lcom/gpc/exif/GPCExifInterface$Rational;->numerator:J

    long-to-float v1, v3

    aget-object v3, p1, v0

    iget-wide v3, v3, Lcom/gpc/exif/GPCExifInterface$Rational;->denominator:J

    long-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 4206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v4, p1, v3

    iget-wide v4, v4, Lcom/gpc/exif/GPCExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v5, p1, v3

    iget-wide v5, v5, Lcom/gpc/exif/GPCExifInterface$Rational;->denominator:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 4207
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v6, p1, v5

    iget-wide v6, v6, Lcom/gpc/exif/GPCExifInterface$Rational;->numerator:J

    long-to-float v6, v6

    aget-object p1, p1, v5

    iget-wide v7, p1, Lcom/gpc/exif/GPCExifInterface$Rational;->denominator:J

    long-to-float p1, v7

    div-float/2addr v6, p1

    float-to-int p1, v6

    .line 4208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    .line 4205
    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4202
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid GPS Timestamp array. array="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4211
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_5
    return-object v1

    .line 4186
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "tag shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeBytes(Ljava/lang/String;)[B
    .locals 1

    if-eqz p1, :cond_1

    .line 5059
    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->getExifAttribute(Ljava/lang/String;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5061
    iget-object p1, p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 5057
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "tag shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 1

    if-eqz p1, :cond_1

    .line 4255
    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->getExifAttribute(Ljava/lang/String;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4261
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    :goto_0
    return-wide p2

    .line 4253
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tag shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 1

    if-eqz p1, :cond_1

    .line 4231
    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->getExifAttribute(Ljava/lang/String;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4237
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :goto_0
    return p2

    .line 4229
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tag shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeRange(Ljava/lang/String;)[J
    .locals 5

    if-eqz p1, :cond_2

    .line 5034
    iget-boolean v0, p0, Lcom/gpc/exif/GPCExifInterface;->mModified:Z

    if-nez v0, :cond_1

    .line 5039
    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->getExifAttribute(Ljava/lang/String;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5041
    iget-wide v0, p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytesOffset:J

    iget-object p1, p1, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->bytes:[B

    array-length p1, p1

    int-to-long v2, p1

    const/4 p1, 0x2

    new-array p1, p1, [J

    const/4 v4, 0x0

    aput-wide v0, p1, v4

    const/4 v0, 0x1

    aput-wide v2, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 5035
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The underlying file has been modified since being parsed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5032
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "tag shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDateTime()Ljava/lang/Long;
    .locals 3

    .line 5223
    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTime"

    .line 5224
    invoke-virtual {p0, v1}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OffsetTime"

    .line 5225
    invoke-virtual {p0, v2}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5223
    invoke-static {v0, v1, v2}, Lcom/gpc/exif/GPCExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeDigitized()Ljava/lang/Long;
    .locals 3

    .line 5241
    const-string v0, "DateTimeDigitized"

    invoke-virtual {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTimeDigitized"

    .line 5242
    invoke-virtual {p0, v1}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OffsetTimeDigitized"

    .line 5243
    invoke-virtual {p0, v2}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5241
    invoke-static {v0, v1, v2}, Lcom/gpc/exif/GPCExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeOriginal()Ljava/lang/Long;
    .locals 3

    .line 5259
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTimeOriginal"

    .line 5260
    invoke-virtual {p0, v1}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OffsetTimeOriginal"

    .line 5261
    invoke-virtual {p0, v2}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5259
    invoke-static {v0, v1, v2}, Lcom/gpc/exif/GPCExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getGpsDateTime()Ljava/lang/Long;
    .locals 5

    .line 5310
    const-string v0, "GPSDateStamp"

    invoke-virtual {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5311
    const-string v1, "GPSTimeStamp"

    invoke-virtual {p0, v1}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 5312
    sget-object v3, Lcom/gpc/exif/GPCExifInterface;->NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 5313
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5314
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5318
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5320
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 5322
    :try_start_0
    sget-object v3, Lcom/gpc/exif/GPCExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1

    .line 5324
    sget-object v3, Lcom/gpc/exif/GPCExifInterface;->sFormatterSecondary:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v2

    .line 5329
    :cond_1
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    :goto_0
    return-object v2
.end method

.method public getLatLong([F)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5075
    invoke-virtual {p0}, Lcom/gpc/exif/GPCExifInterface;->getLatLong()[D

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5080
    :cond_0
    aget-wide v2, v0, v1

    double-to-float v2, v2

    aput v2, p1, v1

    const/4 v1, 0x1

    .line 5081
    aget-wide v2, v0, v1

    double-to-float v0, v2

    aput v0, p1, v1

    return v1
.end method

.method public getLatLong()[D
    .locals 12

    .line 5094
    const-string v0, "GPSLatitude"

    invoke-virtual {p0, v0}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5095
    const-string v1, "GPSLatitudeRef"

    invoke-virtual {p0, v1}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5096
    const-string v2, "GPSLongitude"

    invoke-virtual {p0, v2}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5097
    const-string v3, "GPSLongitudeRef"

    invoke-virtual {p0, v3}, Lcom/gpc/exif/GPCExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5101
    :try_start_0
    invoke-static {v0, v1}, Lcom/gpc/exif/GPCExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v7

    .line 5102
    invoke-static {v2, v3}, Lcom/gpc/exif/GPCExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v9

    .line 5103
    new-array v11, v4, [D

    aput-wide v7, v11, v6

    aput-wide v9, v11, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    .line 5105
    :catch_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Latitude/longitude values are not parsable. "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v6

    aput-object v1, v8, v5

    aput-object v2, v8, v4

    const/4 v0, 0x3

    aput-object v3, v8, v0

    .line 5106
    const-string v0, "latValue=%s, latRef=%s, lngValue=%s, lngRef=%s"

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5105
    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotationDegrees()I
    .locals 2

    .line 4591
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/gpc/exif/GPCExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x5a

    return v0

    :pswitch_1
    const/16 v0, 0x10e

    return v0

    :pswitch_2
    const/16 v0, 0xb4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getThumbnail()[B
    .locals 2

    .line 4871
    iget v0, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 4872
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/exif/GPCExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 4947
    iget-boolean v0, p0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4949
    :cond_0
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_1

    .line 4950
    invoke-virtual {p0}, Lcom/gpc/exif/GPCExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailBytes:[B

    .line 4953
    :cond_1
    iget v0, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 4956
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailBytes:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v2, v0, [I

    :goto_0
    if-ge v3, v0, :cond_3

    .line 4959
    iget-object v4, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v5, v3, 0x3

    aget-byte v6, v4, v5

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    add-int/2addr v6, v4

    aput v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4963
    :cond_3
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    const-string v4, "ThumbnailImageLength"

    .line 4964
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    .line 4965
    iget-object v4, p0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "ThumbnailImageWidth"

    .line 4966
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 4968
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 4969
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 4970
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1

    .line 4954
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailBytes:[B

    iget v1, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailLength:I

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 11

    .line 4883
    const-string v0, "ExifInterface"

    iget-boolean v1, p0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnail:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 4886
    :cond_0
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailBytes:[B

    if-eqz v1, :cond_1

    return-object v1

    .line 4894
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_3

    .line 4896
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4897
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    :goto_0
    move-object v3, v2

    goto :goto_1

    .line 4899
    :cond_2
    const-string v3, "Cannot read thumbnail from inputstream without mark/reset support"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4933
    invoke-static {v1}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v3, v2

    goto/16 :goto_3

    :catch_0
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_2

    .line 4902
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 4903
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/gpc/exif/GPCExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4908
    :cond_4
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lcom/gpc/exif/GPCExifInterfaceUtils$Api21Impl;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4909
    :try_start_3
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v3}, Lcom/gpc/exif/GPCExifInterfaceUtils$Api21Impl;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 4910
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    :goto_1
    if-eqz v1, :cond_8

    .line 4918
    :try_start_4
    iget v4, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailOffset:I

    iget v5, p0, Lcom/gpc/exif/GPCExifInterface;->mOffsetToExifData:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    iget v6, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailOffset:I

    iget v7, p0, Lcom/gpc/exif/GPCExifInterface;->mOffsetToExifData:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    add-int/2addr v6, v7

    int-to-long v6, v6

    const-string v8, "Corrupted image"

    cmp-long v9, v4, v6

    if-nez v9, :cond_7

    .line 4923
    :try_start_5
    iget v4, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailLength:I

    new-array v4, v4, [B

    .line 4924
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    iget v6, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailLength:I

    if-ne v5, v6, :cond_6

    .line 4927
    iput-object v4, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailBytes:[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 4933
    invoke-static {v1}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_5

    .line 4935
    invoke-static {v3}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_5
    return-object v4

    .line 4925
    :cond_6
    :try_start_6
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4920
    :cond_7
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v4

    goto :goto_2

    .line 4915
    :cond_8
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_3
    move-exception v3

    move-object v1, v2

    move-object v4, v3

    move-object v3, v1

    .line 4931
    :goto_2
    :try_start_7
    const-string v5, "Encountered exception while getting thumbnail"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4933
    invoke-static {v1}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_9

    .line 4935
    invoke-static {v3}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_9
    return-object v2

    :catchall_3
    move-exception v0

    :goto_3
    move-object v2, v1

    .line 4933
    :goto_4
    invoke-static {v2}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_a

    .line 4935
    invoke-static {v3}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 4937
    :cond_a
    throw v0
.end method

.method public getThumbnailRange()[J
    .locals 6

    .line 5005
    iget-boolean v0, p0, Lcom/gpc/exif/GPCExifInterface;->mModified:Z

    if-nez v0, :cond_2

    .line 5010
    iget-boolean v0, p0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5011
    iget-boolean v0, p0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gpc/exif/GPCExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-nez v0, :cond_0

    return-object v1

    .line 5014
    :cond_0
    iget v0, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailOffset:I

    iget v1, p0, Lcom/gpc/exif/GPCExifInterface;->mOffsetToExifData:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailLength:I

    int-to-long v2, v2

    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v0, v4, v5

    const/4 v0, 0x1

    aput-wide v2, v4, v0

    return-object v4

    :cond_1
    return-object v1

    .line 5006
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 0

    .line 4860
    invoke-direct {p0, p1}, Lcom/gpc/exif/GPCExifInterface;->getExifAttribute(Ljava/lang/String;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasThumbnail()Z
    .locals 1

    .line 4851
    iget-boolean v0, p0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public isFlipped()Z
    .locals 3

    .line 4568
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/gpc/exif/GPCExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public isThumbnailCompressed()Z
    .locals 3

    .line 4982
    iget-boolean v0, p0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4985
    :cond_0
    iget v0, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetOrientation()V
    .locals 2

    const/4 v0, 0x1

    .line 4450
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Orientation"

    invoke-virtual {p0, v1, v0}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rotate(I)V
    .locals 6

    .line 4460
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 4464
    const-string v1, "Orientation"

    invoke-virtual {p0, v1, v0}, Lcom/gpc/exif/GPCExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 4467
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v3, :cond_1

    .line 4468
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4469
    div-int/lit8 p1, p1, 0x5a

    add-int/2addr v0, p1

    rem-int/2addr v0, v5

    if-gez v0, :cond_0

    const/4 v4, 0x4

    :cond_0
    add-int/2addr v0, v4

    .line 4471
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 4472
    :cond_1
    sget-object v2, Lcom/gpc/exif/GPCExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4473
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4474
    div-int/lit8 p1, p1, 0x5a

    add-int/2addr v0, p1

    rem-int/2addr v0, v5

    if-gez v0, :cond_2

    const/4 v4, 0x4

    :cond_2
    add-int/2addr v0, v4

    .line 4476
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4481
    :cond_3
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4461
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "degree should be a multiple of 90"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveAttributes()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to save new file. Original file is stored in "

    .line 4735
    iget v1, p0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    invoke-static {v1}, Lcom/gpc/exif/GPCExifInterface;->isSupportedFormatForSavingAttributes(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4739
    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/gpc/exif/GPCExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4740
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4743
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnail:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnailStrips:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/gpc/exif/GPCExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 4744
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 4750
    iput-boolean v1, p0, Lcom/gpc/exif/GPCExifInterface;->mModified:Z

    .line 4753
    invoke-virtual {p0}, Lcom/gpc/exif/GPCExifInterface;->getThumbnail()[B

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailBytes:[B

    const/4 v2, 0x0

    .line 4760
    :try_start_0
    const-string v3, "temp"

    const-string v4, "tmp"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 4761
    iget-object v4, p0, Lcom/gpc/exif/GPCExifInterface;->mFilename:Ljava/lang/String;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_4

    .line 4762
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/gpc/exif/GPCExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 4767
    :cond_4
    iget-object v4, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v4, v5, v6, v7}, Lcom/gpc/exif/GPCExifInterfaceUtils$Api21Impl;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 4768
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 4771
    :goto_2
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 4772
    :try_start_2
    invoke-static {v4, v7}, Lcom/gpc/exif/GPCExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 4776
    invoke-static {v4}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4777
    invoke-static {v7}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v4, 0x0

    .line 4787
    :try_start_3
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4788
    :try_start_4
    iget-object v8, p0, Lcom/gpc/exif/GPCExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 4789
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/gpc/exif/GPCExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 4794
    :cond_5
    iget-object v8, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v8, v5, v6, v9}, Lcom/gpc/exif/GPCExifInterfaceUtils$Api21Impl;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 4795
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4798
    :goto_3
    :try_start_5
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4799
    :try_start_6
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4800
    :try_start_7
    iget v11, p0, Lcom/gpc/exif/GPCExifInterface;->mMimeType:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_6

    .line 4801
    invoke-direct {p0, v9, v10}, Lcom/gpc/exif/GPCExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_4

    :cond_6
    const/16 v12, 0xd

    if-ne v11, v12, :cond_7

    .line 4803
    invoke-direct {p0, v9, v10}, Lcom/gpc/exif/GPCExifInterface;->savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_4

    :cond_7
    const/16 v12, 0xe

    if-ne v11, v12, :cond_8

    .line 4805
    invoke-direct {p0, v9, v10}, Lcom/gpc/exif/GPCExifInterface;->saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_4

    :cond_8
    const/4 v12, 0x3

    if-eq v11, v12, :cond_9

    if-nez v11, :cond_a

    .line 4807
    :cond_9
    new-instance v11, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v11, v10, v12}, Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 4809
    invoke-direct {p0, v11}, Lcom/gpc/exif/GPCExifInterface;->writeExifSegment(Lcom/gpc/exif/GPCExifInterface$ByteOrderedDataOutputStream;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4836
    :cond_a
    :goto_4
    invoke-static {v9}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4837
    invoke-static {v10}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4839
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 4844
    iput-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mThumbnailBytes:[B

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v2

    move-object v13, v7

    move-object v7, v2

    move-object v2, v13

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v10, v2

    goto/16 :goto_b

    :catch_1
    move-exception v10

    move-object v13, v10

    move-object v10, v2

    move-object v2, v7

    move-object v7, v13

    goto :goto_6

    :catch_2
    move-exception v9

    move-object v10, v2

    move-object v2, v7

    move-object v7, v9

    move-object v9, v10

    goto :goto_6

    :catch_3
    move-exception v8

    move-object v9, v2

    move-object v10, v9

    move-object v2, v7

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v10, v2

    goto/16 :goto_c

    :catch_4
    move-exception v8

    move-object v9, v2

    move-object v10, v9

    :goto_5
    move-object v7, v8

    move-object v8, v10

    .line 4814
    :goto_6
    :try_start_8
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 4815
    :try_start_9
    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mFilename:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 4821
    iget-object v2, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v12, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v2, v5, v6, v12}, Lcom/gpc/exif/GPCExifInterfaceUtils$Api21Impl;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 4822
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/gpc/exif/GPCExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_7

    .line 4816
    :cond_b
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/gpc/exif/GPCExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :goto_7
    move-object v8, v2

    .line 4825
    invoke-static {v11, v8}, Lcom/gpc/exif/GPCExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4831
    :try_start_a
    invoke-static {v11}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4832
    invoke-static {v8}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4834
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to save new file"

    invoke-direct {v0, v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_3
    move-exception v0

    move-object v2, v11

    goto :goto_8

    :catch_5
    move-exception v2

    goto :goto_9

    :catchall_4
    move-exception v0

    :goto_8
    const/4 v1, 0x0

    goto :goto_a

    :catch_6
    move-exception v4

    move-object v11, v2

    move-object v2, v4

    .line 4828
    :goto_9
    :try_start_b
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4829
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v11

    .line 4831
    :goto_a
    :try_start_c
    invoke-static {v2}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4832
    invoke-static {v8}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4833
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    move v4, v1

    :goto_b
    move-object v2, v9

    .line 4836
    :goto_c
    invoke-static {v2}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4837
    invoke-static {v10}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-nez v4, :cond_c

    .line 4839
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 4841
    :cond_c
    throw v0

    :catchall_7
    move-exception v0

    goto :goto_d

    :catch_7
    move-exception v0

    goto :goto_e

    :catchall_8
    move-exception v0

    move-object v7, v2

    :goto_d
    move-object v2, v4

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v7, v2

    :goto_e
    move-object v2, v4

    goto :goto_f

    :catchall_9
    move-exception v0

    move-object v7, v2

    goto :goto_10

    :catch_9
    move-exception v0

    move-object v7, v2

    .line 4774
    :goto_f
    :try_start_d
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Failed to copy original file to temp file"

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    :catchall_a
    move-exception v0

    .line 4776
    :goto_10
    invoke-static {v2}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4777
    invoke-static {v7}, Lcom/gpc/exif/GPCExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4778
    throw v0

    .line 4736
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes for JPEG, PNG, WebP, and DNG formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAltitude(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    .line 5180
    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 5181
    :goto_0
    new-instance v1, Lcom/gpc/exif/GPCExifInterface$Rational;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {v1, p1, p2}, Lcom/gpc/exif/GPCExifInterface$Rational;-><init>(D)V

    invoke-virtual {v1}, Lcom/gpc/exif/GPCExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPSAltitude"

    invoke-virtual {p0, p2, p1}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5182
    const-string p1, "GPSAltitudeRef"

    invoke-virtual {p0, p1, v0}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_1c

    .line 4279
    const-string v3, "DateTime"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, " : "

    const-string v5, "Invalid value for "

    const-string v6, "ExifInterface"

    if-nez v3, :cond_0

    const-string v3, "DateTimeOriginal"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DateTimeDigitized"

    .line 4280
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    if-eqz v2, :cond_3

    .line 4282
    sget-object v3, Lcom/gpc/exif/GPCExifInterface;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 4283
    sget-object v7, Lcom/gpc/exif/GPCExifInterface;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    .line 4285
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x13

    if-ne v8, v9, :cond_2

    if-nez v3, :cond_1

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_3

    .line 4296
    const-string v3, "-"

    const-string v7, ":"

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4287
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4301
    :cond_3
    :goto_1
    const-string v3, "ISOSpeedRatings"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4302
    sget-boolean v1, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 4303
    const-string v1, "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    :cond_4
    const-string v1, "PhotographicSensitivity"

    :cond_5
    const/4 v3, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_8

    .line 4309
    sget-object v8, Lcom/gpc/exif/GPCExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4310
    const-string v8, "GPSTimeStamp"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4311
    sget-object v8, Lcom/gpc/exif/GPCExifInterface;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 4312
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_6

    .line 4313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4316
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/1,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    .line 4317
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 4320
    :cond_7
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 4321
    new-instance v10, Lcom/gpc/exif/GPCExifInterface$Rational;

    invoke-direct {v10, v8, v9}, Lcom/gpc/exif/GPCExifInterface$Rational;-><init>(D)V

    invoke-virtual {v10}, Lcom/gpc/exif/GPCExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4323
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4329
    :goto_3
    sget-object v8, Lcom/gpc/exif/GPCExifInterface;->EXIF_TAGS:[[Lcom/gpc/exif/GPCExifInterface$ExifTag;

    array-length v8, v8

    if-ge v5, v8, :cond_1b

    const/4 v8, 0x4

    if-ne v5, v8, :cond_9

    .line 4330
    iget-boolean v8, v0, Lcom/gpc/exif/GPCExifInterface;->mHasThumbnail:Z

    if-nez v8, :cond_9

    goto/16 :goto_f

    .line 4333
    :cond_9
    sget-object v8, Lcom/gpc/exif/GPCExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v8, v8, v5

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;

    if-eqz v8, :cond_19

    if-nez v2, :cond_a

    .line 4336
    iget-object v8, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v5

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 4339
    :cond_a
    invoke-static {v2}, Lcom/gpc/exif/GPCExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 4341
    iget v10, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, -0x1

    if-eq v10, v11, :cond_12

    iget v10, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_b

    goto/16 :goto_7

    .line 4343
    :cond_b
    iget v10, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->secondaryFormat:I

    if-eq v10, v12, :cond_d

    iget v10, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->secondaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v10, v11, :cond_c

    iget v10, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->secondaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    .line 4344
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_d

    .line 4345
    :cond_c
    iget v8, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->secondaryFormat:I

    goto/16 :goto_8

    .line 4346
    :cond_d
    iget v10, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->primaryFormat:I

    if-eq v10, v7, :cond_11

    iget v10, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->primaryFormat:I

    const/4 v11, 0x7

    if-eq v10, v11, :cond_11

    iget v10, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->primaryFormat:I

    if-ne v10, v3, :cond_e

    goto/16 :goto_6

    .line 4351
    :cond_e
    sget-boolean v10, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v10, :cond_19

    .line 4352
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Given tag ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") value didn\'t match with one of expected formats: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/gpc/exif/GPCExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v13, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->primaryFormat:I

    aget-object v13, v11, v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4355
    iget v13, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->secondaryFormat:I

    const-string v14, ""

    const-string v15, ", "

    if-ne v13, v12, :cond_f

    move-object v8, v14

    goto :goto_4

    .line 4356
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->secondaryFormat:I

    aget-object v8, v11, v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (guess: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 4357
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v11, v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v12, :cond_10

    goto :goto_5

    .line 4358
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v11, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_5
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4352
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 4349
    :cond_11
    :goto_6
    iget v8, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->primaryFormat:I

    goto :goto_8

    .line 4342
    :cond_12
    :goto_7
    iget v8, v8, Lcom/gpc/exif/GPCExifInterface$ExifTag;->primaryFormat:I

    .line 4362
    :goto_8
    const-string v9, "/"

    const-string v10, ","

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    const/16 p2, 0x0

    const/4 v15, 0x1

    .line 4437
    sget-boolean v3, Lcom/gpc/exif/GPCExifInterface;->DEBUG:Z

    if-eqz v3, :cond_1a

    .line 4438
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Data format isn\'t one of expected formats: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 4427
    :pswitch_1
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 4428
    array-length v9, v8

    new-array v9, v9, [D

    const/4 v10, 0x0

    .line 4429
    :goto_9
    array-length v11, v8

    if-ge v10, v11, :cond_13

    .line 4430
    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 4432
    :cond_13
    iget-object v8, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v5

    iget-object v10, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4433
    invoke-static {v9, v10}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v9

    .line 4432
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 4415
    :pswitch_2
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 4416
    array-length v10, v8

    new-array v10, v10, [Lcom/gpc/exif/GPCExifInterface$Rational;

    const/4 v11, 0x0

    .line 4417
    :goto_a
    array-length v13, v8

    if-ge v11, v13, :cond_14

    .line 4418
    aget-object v13, v8, v11

    invoke-virtual {v13, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 4419
    new-instance v14, Lcom/gpc/exif/GPCExifInterface$Rational;

    aget-object v15, v13, v4

    const/16 p2, 0x0

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-long v3, v3

    aget-object v13, v13, v7

    move-object/from16 v16, v8

    const/4 v15, 0x1

    .line 4420
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    invoke-direct {v14, v3, v4, v7, v8}, Lcom/gpc/exif/GPCExifInterface$Rational;-><init>(JJ)V

    aput-object v14, v10, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v16

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_a

    :cond_14
    const/16 p2, 0x0

    const/4 v15, 0x1

    .line 4422
    iget-object v3, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    iget-object v4, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4423
    invoke-static {v10, v4}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createSRational([Lcom/gpc/exif/GPCExifInterface$Rational;Ljava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v4

    .line 4422
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    :pswitch_3
    const/16 p2, 0x0

    const/4 v15, 0x1

    .line 4383
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4384
    array-length v4, v3

    new-array v4, v4, [I

    const/4 v7, 0x0

    .line 4385
    :goto_b
    array-length v8, v3

    if-ge v7, v8, :cond_15

    .line 4386
    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 4388
    :cond_15
    iget-object v3, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    iget-object v7, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4389
    invoke-static {v4, v7}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v4

    .line 4388
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    :pswitch_4
    const/16 p2, 0x0

    const/4 v15, 0x1

    .line 4403
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4404
    array-length v4, v3

    new-array v4, v4, [Lcom/gpc/exif/GPCExifInterface$Rational;

    const/4 v7, 0x0

    .line 4405
    :goto_c
    array-length v8, v3

    if-ge v7, v8, :cond_16

    .line 4406
    aget-object v8, v3, v7

    invoke-virtual {v8, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 4407
    new-instance v10, Lcom/gpc/exif/GPCExifInterface$Rational;

    aget-object v11, v8, p2

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-long v13, v13

    aget-object v8, v8, v15

    move v11, v7

    .line 4408
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    invoke-direct {v10, v13, v14, v7, v8}, Lcom/gpc/exif/GPCExifInterface$Rational;-><init>(JJ)V

    aput-object v10, v4, v11

    add-int/lit8 v7, v11, 0x1

    goto :goto_c

    .line 4410
    :cond_16
    iget-object v3, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    iget-object v7, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4411
    invoke-static {v4, v7}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createURational([Lcom/gpc/exif/GPCExifInterface$Rational;Ljava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v4

    .line 4410
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    :pswitch_5
    const/16 p2, 0x0

    const/4 v15, 0x1

    .line 4393
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4394
    array-length v4, v3

    new-array v4, v4, [J

    const/4 v7, 0x0

    .line 4395
    :goto_d
    array-length v8, v3

    if-ge v7, v8, :cond_17

    .line 4396
    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 4398
    :cond_17
    iget-object v3, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    iget-object v7, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4399
    invoke-static {v4, v7}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v4

    .line 4398
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :pswitch_6
    const/16 p2, 0x0

    const/4 v15, 0x1

    .line 4373
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4374
    array-length v4, v3

    new-array v4, v4, [I

    const/4 v7, 0x0

    .line 4375
    :goto_e
    array-length v8, v3

    if-ge v7, v8, :cond_18

    .line 4376
    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 4378
    :cond_18
    iget-object v3, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    iget-object v7, v0, Lcom/gpc/exif/GPCExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4379
    invoke-static {v4, v7}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v4

    .line 4378
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :pswitch_7
    const/16 p2, 0x0

    const/4 v15, 0x1

    .line 4369
    iget-object v3, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    invoke-static {v2}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :pswitch_8
    const/16 p2, 0x0

    const/4 v15, 0x1

    .line 4364
    iget-object v3, v0, Lcom/gpc/exif/GPCExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    invoke-static {v2}, Lcom/gpc/exif/GPCExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Lcom/gpc/exif/GPCExifInterface$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_19
    :goto_f
    const/16 p2, 0x0

    const/4 v15, 0x1

    :cond_1a
    :goto_10
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_1b
    return-void

    .line 4276
    :cond_1c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "tag shouldn\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDateTime(Ljava/lang/Long;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 5197
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 5201
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    .line 5202
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 5203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 5204
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5206
    :cond_0
    sget-object v1, Lcom/gpc/exif/GPCExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DateTime"

    invoke-virtual {p0, v1, p1}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5207
    const-string p1, "SubSecTime"

    invoke-virtual {p0, p1, v0}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5198
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Timestamp should a positive value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5194
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Timestamp should not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGpsInfo(Landroid/location/Location;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 5123
    :cond_0
    const-string v0, "GPSProcessingMethod"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5124
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gpc/exif/GPCExifInterface;->setLatLong(DD)V

    .line 5125
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gpc/exif/GPCExifInterface;->setAltitude(D)V

    .line 5127
    const-string v0, "GPSSpeedRef"

    const-string v1, "K"

    invoke-virtual {p0, v0, v1}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5128
    new-instance v0, Lcom/gpc/exif/GPCExifInterface$Rational;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    .line 5129
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lcom/gpc/exif/GPCExifInterface$Rational;-><init>(D)V

    invoke-virtual {v0}, Lcom/gpc/exif/GPCExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5128
    const-string v1, "GPSSpeed"

    invoke-virtual {p0, v1, v0}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5130
    sget-object v0, Lcom/gpc/exif/GPCExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    .line 5131
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 5130
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    const/4 v1, -0x1

    .line 5131
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 5132
    aget-object v0, p1, v0

    const-string v1, "GPSDateStamp"

    invoke-virtual {p0, v1, v0}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5133
    aget-object p1, p1, v0

    const-string v0, "GPSTimeStamp"

    invoke-virtual {p0, v0, p1}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLatLong(DD)V
    .locals 4

    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 5147
    const-string v2, " is not valid."

    cmpg-double v3, p1, v0

    if-ltz v3, :cond_3

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v3, p1, v0

    if-gtz v3, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v3, p3, v0

    if-ltz v3, :cond_2

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v3, p3, v0

    if-gtz v3, :cond_2

    .line 5150
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    .line 5153
    const-string v2, "N"

    goto :goto_0

    :cond_0
    const-string v2, "S"

    :goto_0
    const-string v3, "GPSLatitudeRef"

    invoke-virtual {p0, v3, v2}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5154
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/gpc/exif/GPCExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPSLatitude"

    invoke-virtual {p0, p2, p1}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-double p1, p3, v0

    if-ltz p1, :cond_1

    .line 5155
    const-string p1, "E"

    goto :goto_1

    :cond_1
    const-string p1, "W"

    :goto_1
    const-string p2, "GPSLongitudeRef"

    invoke-virtual {p0, p2, p1}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5156
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/gpc/exif/GPCExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPSLongitude"

    invoke-virtual {p0, p2, p1}, Lcom/gpc/exif/GPCExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5151
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Longitude value "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5148
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Latitude value "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
