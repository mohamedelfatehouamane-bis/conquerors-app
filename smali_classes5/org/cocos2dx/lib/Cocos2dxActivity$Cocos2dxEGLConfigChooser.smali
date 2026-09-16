.class public Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cocos2dxEGLConfigChooser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;
    }
.end annotation


# instance fields
.field protected configAttribs:[I

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;IIIIII)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    filled-new-array/range {p2 .. p7}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 0

    .line 129
    invoke-direct/range {p0 .. p5}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p0

    return p0
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    const/4 v0, 0x1

    .line 168
    new-array v0, v0, [I

    .line 169
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 170
    aget p1, v0, p1

    return p1

    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v7, 0x1

    .line 245
    new-array v8, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 246
    invoke-interface {v1, v2, v9, v10, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    const-string v11, "Can not select an EGLConfig for rendering."

    const-string v12, "device_policy"

    if-eqz v3, :cond_3

    .line 248
    aget v5, v8, v10

    new-array v4, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 249
    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    aget v14, v3, v10

    aget v16, v3, v7

    const/16 v28, 0x2

    aget v18, v3, v28

    const/16 v29, 0x3

    aget v20, v3, v29

    const/16 v30, 0x4

    aget v22, v3, v30

    const/16 v31, 0x5

    aget v24, v3, v31

    const/16 v26, 0x4

    const/16 v27, 0x3038

    const/16 v13, 0x3024

    const/16 v15, 0x3023

    const/16 v17, 0x3022

    const/16 v19, 0x3021

    const/16 v21, 0x3025

    const/16 v23, 0x3026

    const/16 v25, 0x3040

    filled-new-array/range {v13 .. v27}, [I

    move-result-object v3

    .line 259
    new-array v6, v7, [I

    .line 261
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 262
    aget v3, v6, v10

    if-lez v3, :cond_0

    .line 264
    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v3, 0xf

    .line 268
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    .line 278
    new-array v3, v3, [I

    fill-array-data v3, :array_1

    .line 290
    iget-object v13, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    aget v13, v13, v29

    const/4 v14, 0x6

    if-nez v13, :cond_1

    move-object v3, v5

    .line 292
    aget v5, v8, v10

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 293
    new-array v1, v14, [I

    aput v31, v1, v10

    aput v14, v1, v7

    aput v31, v1, v28

    aput v10, v1, v29

    aput v10, v1, v30

    aput v10, v1, v31

    move-object/from16 v2, p2

    move-object v3, v1

    move-object/from16 v1, p1

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 297
    aget v1, v8, v10

    move-object/from16 v2, p2

    move v5, v1

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 298
    new-array v3, v14, [I

    aput v30, v3, v10

    aput v30, v3, v7

    aput v30, v3, v28

    aput v30, v3, v29

    aput v10, v3, v30

    aput v10, v3, v31

    .line 300
    :goto_0
    aget v5, v6, v10

    if-lez v5, :cond_2

    .line 302
    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    return-object v1

    .line 306
    :cond_2
    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    .line 311
    :cond_3
    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3021
        0x4
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method public selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 10

    .line 143
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v6, p3, v2

    const/16 v7, 0x3025

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 144
    invoke-direct/range {v3 .. v8}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p1

    const/16 v7, 0x3026

    .line 146
    invoke-direct/range {v3 .. v8}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p2

    const/4 v3, 0x4

    .line 148
    aget v3, p4, v3

    if-lt p1, v3, :cond_0

    const/4 p1, 0x5

    aget p1, p4, p1

    if-lt p2, p1, :cond_0

    const/16 v7, 0x3024

    const/4 v8, 0x0

    move-object v3, p0

    .line 149
    invoke-direct/range {v3 .. v8}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p1

    const/16 v7, 0x3023

    .line 151
    invoke-direct/range {v3 .. v8}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p2

    const/16 v7, 0x3022

    .line 153
    invoke-direct/range {v3 .. v8}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v7, 0x3021

    .line 155
    invoke-direct/range {v3 .. v8}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 157
    aget v3, p4, v1

    if-lt p1, v3, :cond_0

    const/4 p1, 0x1

    aget p1, p4, p1

    if-lt p2, p1, :cond_0

    const/4 p1, 0x2

    aget p1, p4, p1

    if-lt v9, p1, :cond_0

    const/4 p1, 0x3

    aget p1, p4, p1

    if-lt v7, p1, :cond_0

    return-object v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object p1, v4

    move-object p2, v5

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
