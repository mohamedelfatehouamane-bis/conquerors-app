.class public final enum Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;
.super Ljava/lang/Enum;
.source "WebPlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum CLIENT_CERT_REQUEST:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum CLOSE_WINDOW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum CONSOLE_MESSAGE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum CREATE_WINDOW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum DOWNLOAD_START:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum ERROR:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum FORM_RESUBMISSION:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum FRAME_UPDATE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum GEOLOCATION_PERMISSIONS_SHOW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum GET_FRAME_RESPONSE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum HIDE_CUSTOM_VIEW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum HTTP_AUTH_REQUEST:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum HTTP_ERROR:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum JS_ALERT:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum JS_CONFIRM:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum JS_PROMPT:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum LOAD_RESOUCE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum LOGIN_REQUEST:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum PAGE_COMMIT_VISIBLE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum PAGE_FINISHED:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum PAGE_STARTED:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum PERMISSION_REQUEST:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum PROGRESS_CHANGED:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum RECEIVED_ICON:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum RECEIVED_TITLE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum RECEIVED_TOUCH_ICON_URL:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum REQUEST_FOCUS:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SCALE_CHANGED:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SHOULD_INTERCEPT_REQUEST:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SHOULD_OVERRIDE_KEY_EVENT:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SHOULD_OVERRIDE_URL_LOADING:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SHOW_CUSTOM_VIEW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SHOW_FILE_CHOOSER:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SSL_ERROR:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum UNHANDLED_KEY_EVENT:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

.field public static final enum WEBPLAYER_EVENT:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 60

    .line 4
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v1, "PAGE_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->PAGE_STARTED:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 5
    new-instance v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v3, "PAGE_FINISHED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->PAGE_FINISHED:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 6
    new-instance v3, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->ERROR:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 7
    new-instance v5, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v7, "HTTP_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->HTTP_ERROR:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 8
    new-instance v7, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v9, "PERMISSION_REQUEST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->PERMISSION_REQUEST:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 9
    new-instance v9, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v11, "LOAD_RESOUCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->LOAD_RESOUCE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 10
    new-instance v11, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v13, "SSL_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->SSL_ERROR:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 11
    new-instance v13, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v15, "CLIENT_CERT_REQUEST"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->CLIENT_CERT_REQUEST:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 12
    new-instance v15, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v17, 0x7

    const-string v2, "HTTP_AUTH_REQUEST"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->HTTP_AUTH_REQUEST:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 13
    new-instance v2, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v19, 0x8

    const-string v4, "SCALE_CHANGED"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->SCALE_CHANGED:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 14
    new-instance v4, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v21, 0x9

    const-string v6, "LOGIN_REQUEST"

    const/16 v22, 0x3

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->LOGIN_REQUEST:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 15
    new-instance v6, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v23, 0xa

    const-string v8, "PROGRESS_CHANGED"

    const/16 v24, 0x4

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->PROGRESS_CHANGED:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 16
    new-instance v8, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v25, 0xb

    const-string v10, "RECEIVED_TITLE"

    const/16 v26, 0x5

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->RECEIVED_TITLE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 17
    new-instance v10, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v27, 0xc

    const-string v12, "RECEIVED_ICON"

    const/16 v28, 0x6

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->RECEIVED_ICON:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 18
    new-instance v12, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v29, 0xd

    const-string v14, "RECEIVED_TOUCH_ICON_URL"

    move-object/from16 v30, v0

    const/16 v0, 0xe

    invoke-direct {v12, v14, v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->RECEIVED_TOUCH_ICON_URL:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 19
    new-instance v14, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v31, 0xe

    const-string v0, "SHOW_CUSTOM_VIEW"

    move-object/from16 v32, v1

    const/16 v1, 0xf

    invoke-direct {v14, v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->SHOW_CUSTOM_VIEW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 20
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v33, 0xf

    const-string v1, "HIDE_CUSTOM_VIEW"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->HIDE_CUSTOM_VIEW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 21
    new-instance v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v35, 0x10

    const-string v2, "CREATE_WINDOW"

    move-object/from16 v36, v0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->CREATE_WINDOW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 22
    new-instance v2, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v37, 0x11

    const-string v0, "CLOSE_WINDOW"

    move-object/from16 v38, v1

    const/16 v1, 0x12

    invoke-direct {v2, v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->CLOSE_WINDOW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 23
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v39, 0x12

    const-string v1, "REQUEST_FOCUS"

    move-object/from16 v40, v2

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->REQUEST_FOCUS:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 24
    new-instance v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v41, 0x13

    const-string v2, "JS_ALERT"

    move-object/from16 v42, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->JS_ALERT:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 25
    new-instance v2, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v43, 0x14

    const-string v0, "JS_CONFIRM"

    move-object/from16 v44, v1

    const/16 v1, 0x15

    invoke-direct {v2, v0, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->JS_CONFIRM:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 26
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v45, 0x15

    const-string v1, "JS_PROMPT"

    move-object/from16 v46, v2

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->JS_PROMPT:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 27
    new-instance v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v2, "CONSOLE_MESSAGE"

    move-object/from16 v47, v0

    const/16 v0, 0x17

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->CONSOLE_MESSAGE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 28
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v2, "SHOW_FILE_CHOOSER"

    move-object/from16 v48, v1

    const/16 v1, 0x18

    invoke-direct {v0, v2, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->SHOW_FILE_CHOOSER:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 29
    new-instance v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v2, "GEOLOCATION_PERMISSIONS_SHOW"

    move-object/from16 v49, v0

    const/16 v0, 0x19

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->GEOLOCATION_PERMISSIONS_SHOW:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 30
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v2, "DOWNLOAD_START"

    move-object/from16 v50, v1

    const/16 v1, 0x1a

    invoke-direct {v0, v2, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->DOWNLOAD_START:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 31
    new-instance v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v2, "SHOULD_OVERRIDE_URL_LOADING"

    move-object/from16 v51, v0

    const/16 v0, 0x1b

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->SHOULD_OVERRIDE_URL_LOADING:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 32
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v2, "SHOULD_OVERRIDE_KEY_EVENT"

    move-object/from16 v52, v1

    const/16 v1, 0x1c

    invoke-direct {v0, v2, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->SHOULD_OVERRIDE_KEY_EVENT:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 33
    new-instance v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v2, "PAGE_COMMIT_VISIBLE"

    move-object/from16 v53, v0

    const/16 v0, 0x1d

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->PAGE_COMMIT_VISIBLE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 34
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v2, "FORM_RESUBMISSION"

    move-object/from16 v54, v1

    const/16 v1, 0x1e

    invoke-direct {v0, v2, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->FORM_RESUBMISSION:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 35
    new-instance v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v2, "UNHANDLED_KEY_EVENT"

    move-object/from16 v55, v0

    const/16 v0, 0x1f

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->UNHANDLED_KEY_EVENT:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 36
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v2, "WEBPLAYER_EVENT"

    move-object/from16 v56, v1

    const/16 v1, 0x20

    invoke-direct {v0, v2, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->WEBPLAYER_EVENT:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 37
    new-instance v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v2, "SHOULD_INTERCEPT_REQUEST"

    move-object/from16 v57, v0

    const/16 v0, 0x21

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->SHOULD_INTERCEPT_REQUEST:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 38
    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v2, "FRAME_UPDATE"

    move-object/from16 v58, v1

    const/16 v1, 0x22

    invoke-direct {v0, v2, v1}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->FRAME_UPDATE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    .line 39
    new-instance v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const-string v2, "GET_FRAME_RESPONSE"

    move-object/from16 v59, v0

    const/16 v0, 0x23

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->GET_FRAME_RESPONSE:Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    const/16 v0, 0x24

    .line 3
    new-array v0, v0, [Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    aput-object v30, v0, v16

    aput-object v32, v0, v18

    aput-object v3, v0, v20

    aput-object v5, v0, v22

    aput-object v7, v0, v24

    aput-object v9, v0, v26

    aput-object v11, v0, v28

    aput-object v13, v0, v17

    aput-object v15, v0, v19

    aput-object v34, v0, v21

    aput-object v4, v0, v23

    aput-object v6, v0, v25

    aput-object v8, v0, v27

    aput-object v10, v0, v29

    aput-object v12, v0, v31

    aput-object v14, v0, v33

    aput-object v36, v0, v35

    aput-object v38, v0, v37

    aput-object v40, v0, v39

    aput-object v42, v0, v41

    aput-object v44, v0, v43

    aput-object v46, v0, v45

    const/16 v2, 0x16

    aput-object v47, v0, v2

    const/16 v2, 0x17

    aput-object v48, v0, v2

    const/16 v2, 0x18

    aput-object v49, v0, v2

    const/16 v2, 0x19

    aput-object v50, v0, v2

    const/16 v2, 0x1a

    aput-object v51, v0, v2

    const/16 v2, 0x1b

    aput-object v52, v0, v2

    const/16 v2, 0x1c

    aput-object v53, v0, v2

    const/16 v2, 0x1d

    aput-object v54, v0, v2

    const/16 v2, 0x1e

    aput-object v55, v0, v2

    const/16 v2, 0x1f

    aput-object v56, v0, v2

    const/16 v2, 0x20

    aput-object v57, v0, v2

    const/16 v2, 0x21

    aput-object v58, v0, v2

    const/16 v2, 0x22

    aput-object v59, v0, v2

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sput-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->$VALUES:[Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;
    .locals 1

    .line 3
    const-class v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;
    .locals 1

    .line 3
    sget-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->$VALUES:[Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    invoke-virtual {v0}, [Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/ads/webplayer/WebPlayerEvent;

    return-object v0
.end method
