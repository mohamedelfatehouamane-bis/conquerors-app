.class public final Lcom/gpc/util/EmulatorDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/util/EmulatorDetector$OnEmulatorDetectorListener;
    }
.end annotation


# static fields
.field private static final ANDY_FILES:[Ljava/lang/String;

.field private static final DEVICE_IDS:[Ljava/lang/String;

.field private static final GENY_FILES:[Ljava/lang/String;

.field private static final IMSI_IDS:[Ljava/lang/String;

.field private static final IP:Ljava/lang/String; = "10.0.2.15"

.field private static final MIN_PROPERTIES_THRESHOLD:I = 0x5

.field private static final PHONE_NUMBERS:[Ljava/lang/String;

.field private static final PIPES:[Ljava/lang/String;

.field private static final PROPERTIES:[Lcom/gpc/sdk/core/b;

.field private static final QEMU_DRIVERS:[Ljava/lang/String;

.field private static final X86_FILES:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mEmulatorDetector:Lcom/gpc/util/EmulatorDetector;


# instance fields
.field private isDebug:Z

.field private isTelephony:Z

.field private mListPackageName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-string v15, "15555215582"

    const-string v16, "15555215584"

    const-string v1, "15555215554"

    const-string v2, "15555215556"

    const-string v3, "15555215558"

    const-string v4, "15555215560"

    const-string v5, "15555215562"

    const-string v6, "15555215564"

    const-string v7, "15555215566"

    const-string v8, "15555215568"

    const-string v9, "15555215570"

    const-string v10, "15555215572"

    const-string v11, "15555215574"

    const-string v12, "15555215576"

    const-string v13, "15555215578"

    const-string v14, "15555215580"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpc/util/EmulatorDetector;->PHONE_NUMBERS:[Ljava/lang/String;

    .line 7
    const-string v0, "e21833235b6eef10"

    const-string v1, "012345678912345"

    const-string v2, "000000000000000"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpc/util/EmulatorDetector;->DEVICE_IDS:[Ljava/lang/String;

    .line 13
    const-string v0, "310260000000000"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpc/util/EmulatorDetector;->IMSI_IDS:[Ljava/lang/String;

    .line 17
    const-string v0, "/dev/socket/genyd"

    const-string v1, "/dev/socket/baseband_genyd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpc/util/EmulatorDetector;->GENY_FILES:[Ljava/lang/String;

    .line 22
    const-string v0, "goldfish"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gpc/util/EmulatorDetector;->QEMU_DRIVERS:[Ljava/lang/String;

    .line 24
    const-string v1, "/dev/socket/qemud"

    const-string v2, "/dev/qemu_pipe"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gpc/util/EmulatorDetector;->PIPES:[Ljava/lang/String;

    .line 29
    const-string v8, "init.vbox86.rc"

    const-string v9, "ueventd.vbox86.rc"

    const-string v2, "ueventd.android_x86.rc"

    const-string v3, "x86.prop"

    const-string v4, "ueventd.ttVM_x86.rc"

    const-string v5, "init.ttVM_x86.rc"

    const-string v6, "fstab.ttVM_x86"

    const-string v7, "fstab.vbox86"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gpc/util/EmulatorDetector;->X86_FILES:[Ljava/lang/String;

    .line 40
    const-string v1, "fstab.andy"

    const-string v2, "ueventd.andy.rc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gpc/util/EmulatorDetector;->ANDY_FILES:[Ljava/lang/String;

    .line 45
    new-instance v1, Lcom/gpc/sdk/core/b;

    const-string v2, "init.svc.qemud"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/gpc/sdk/core/b;

    const-string v4, "init.svc.qemu-props"

    invoke-direct {v2, v4, v3}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/gpc/sdk/core/b;

    const-string v5, "qemu.hw.mainkeys"

    invoke-direct {v4, v5, v3}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/gpc/sdk/core/b;

    const-string v6, "qemu.sf.fake_camera"

    invoke-direct {v5, v6, v3}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/gpc/sdk/core/b;

    const-string v7, "qemu.sf.lcd_density"

    invoke-direct {v6, v7, v3}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/gpc/sdk/core/b;

    const-string v8, "ro.bootloader"

    const-string v9, "unknown"

    invoke-direct {v7, v8, v9}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/gpc/sdk/core/b;

    const-string v10, "ro.bootmode"

    invoke-direct {v8, v10, v9}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/gpc/sdk/core/b;

    const-string v10, "ro.hardware"

    invoke-direct {v9, v10, v0}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/gpc/sdk/core/b;

    const-string v10, "ro.kernel.android.qemud"

    invoke-direct {v0, v10, v3}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/gpc/sdk/core/b;

    const-string v11, "ro.kernel.qemu.gles"

    invoke-direct {v10, v11, v3}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/gpc/sdk/core/b;

    const-string v12, "ro.kernel.qemu"

    const-string v13, "1"

    invoke-direct {v11, v12, v13}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/gpc/sdk/core/b;

    const-string v13, "ro.product.device"

    const-string v14, "generic"

    invoke-direct {v12, v13, v14}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/gpc/sdk/core/b;

    const-string v14, "ro.product.model"

    const-string v15, "sdk"

    invoke-direct {v13, v14, v15}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/gpc/sdk/core/b;

    const-string v3, "ro.product.name"

    invoke-direct {v14, v3, v15}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/gpc/sdk/core/b;

    const-string v15, "ro.serialno"

    move-object/from16 v17, v0

    const/4 v0, 0x0

    invoke-direct {v3, v15, v0}, Lcom/gpc/sdk/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/gpc/sdk/core/b;

    const/4 v15, 0x0

    aput-object v1, v0, v15

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v4, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    const/4 v1, 0x4

    aput-object v6, v0, v1

    const/4 v1, 0x5

    aput-object v7, v0, v1

    const/4 v1, 0x6

    aput-object v8, v0, v1

    const/4 v1, 0x7

    aput-object v9, v0, v1

    const/16 v1, 0x8

    aput-object v17, v0, v1

    const/16 v1, 0x9

    aput-object v10, v0, v1

    const/16 v1, 0xa

    aput-object v11, v0, v1

    const/16 v1, 0xb

    aput-object v12, v0, v1

    const/16 v1, 0xc

    aput-object v13, v0, v1

    const/16 v1, 0xd

    aput-object v14, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    sput-object v0, Lcom/gpc/util/EmulatorDetector;->PROPERTIES:[Lcom/gpc/sdk/core/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gpc/util/EmulatorDetector;->isDebug:Z

    .line 3
    iput-boolean v0, p0, Lcom/gpc/util/EmulatorDetector;->isTelephony:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/util/EmulatorDetector;->mListPackageName:Ljava/util/List;

    .line 15
    sput-object p1, Lcom/gpc/util/EmulatorDetector;->mContext:Landroid/content/Context;

    .line 16
    const-string p1, "com.google.android.launcher.layouts.genymotion"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/gpc/util/EmulatorDetector;->mListPackageName:Ljava/util/List;

    const-string v0, "com.bluestacks"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/gpc/util/EmulatorDetector;->mListPackageName:Ljava/util/List;

    const-string v0, "com.bignox.app"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/util/EmulatorDetector;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkAdvanced()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/util/EmulatorDetector;->checkTelephony()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/gpc/util/EmulatorDetector;->checkGenyFiles()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/gpc/util/EmulatorDetector;->checkAndyFiles()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/gpc/util/EmulatorDetector;->checkQEmuDrivers()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/gpc/util/EmulatorDetector;->checkPipes()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/gpc/util/EmulatorDetector;->checkIp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/gpc/util/EmulatorDetector;->checkQEmuProps()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gpc/util/EmulatorDetector;->checkX86Files()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkAndyFiles()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/gpc/util/EmulatorDetector;->ANDY_FILES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    const-string v0, "Check Andy is detected"

    invoke-direct {p0, v0}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private checkBasic()Z
    .locals 9

    .line 1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "google_sdk"

    const/4 v4, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "droid4x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4
    const-string v6, "Emulator"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5
    const-string v6, "Android SDK built for x86"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 6
    const-string v6, "Genymotion"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 7
    const-string v6, "goldfish"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 8
    const-string v6, "vbox86"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 9
    const-string v7, "sdk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 10
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 11
    const-string v7, "sdk_x86"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 12
    const-string v7, "vbox86p"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 13
    invoke-virtual {v7, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "nox"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 14
    invoke-virtual {v7, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 15
    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    invoke-virtual {v6, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v4

    .line 20
    :cond_2
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    or-int/2addr v0, v2

    if-eqz v0, :cond_4

    return v4

    .line 22
    :cond_4
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private checkDeviceId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkGenyFiles()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/gpc/util/EmulatorDetector;->GENY_FILES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    const-string v0, "Check genymotion is detected"

    invoke-direct {p0, v0}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private checkImsi()Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/util/EmulatorDetector;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/gpc/util/EmulatorDetector;->IMSI_IDS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 6
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    const-string v1, "Check imsi is detected"

    invoke-direct {p0, v1}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method private checkIp()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/gpc/util/EmulatorDetector;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 3
    const-string v0, "/system/bin/netcfg"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    .line 6
    :try_start_0
    new-instance v4, Ljava/lang/ProcessBuilder;

    invoke-direct {v4, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/io/File;

    const-string v5, "/system/bin/"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 9
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v4, 0x400

    .line 11
    new-array v4, v4, [B

    .line 12
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 13
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 21
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "netcfg data -> "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 25
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 28
    array-length v2, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 29
    const-string v6, "wlan0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "tunl0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "eth0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 30
    :cond_1
    const-string v6, "10.0.2.15"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 32
    const-string v0, "Check IP is detected"

    invoke-direct {p0, v0}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return v1
.end method

.method private checkOperatorNameAndroid()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/util/EmulatorDetector;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    const-string v1, "Check operator name android is detected"

    invoke-direct {p0, v1}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private checkPackageName()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/util/EmulatorDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 5
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/gpc/util/EmulatorDetector;->mListPackageName:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Detected "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkPipes()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/gpc/util/EmulatorDetector;->PIPES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    const-string v0, "Check pipes is detected"

    invoke-direct {p0, v0}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private checkQEmuDrivers()Z
    .locals 11

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/tty/drivers"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v3, v1

    .line 2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x400

    .line 3
    new-array v6, v6, [B

    .line 5
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    .line 7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 9
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :goto_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 13
    sget-object v6, Lcom/gpc/util/EmulatorDetector;->QEMU_DRIVERS:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 14
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 15
    const-string v1, "Check QEmuDrivers is detected"

    invoke-direct {p0, v1}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method private checkQEmuProps()Z
    .locals 8

    .line 1
    sget-object v0, Lcom/gpc/util/EmulatorDetector;->PROPERTIES:[Lcom/gpc/sdk/core/b;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 2
    sget-object v6, Lcom/gpc/util/EmulatorDetector;->mContext:Landroid/content/Context;

    iget-object v7, v5, Lcom/gpc/sdk/core/b;->a:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/gpc/util/EmulatorDetector;->getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v5, v5, Lcom/gpc/sdk/core/b;->b:Ljava/lang/String;

    if-nez v5, :cond_0

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-lt v4, v0, :cond_3

    .line 14
    const-string v0, "Check QEmuProps is detected"

    invoke-direct {p0, v0}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method

.method private checkTelephony()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/util/EmulatorDetector;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/gpc/util/EmulatorDetector;->isTelephony:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/gpc/util/EmulatorDetector;->checkImsi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/gpc/util/EmulatorDetector;->checkOperatorNameAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private checkX86Files()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/gpc/util/EmulatorDetector;->X86_FILES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    const-string v0, "Check X86 system is detected"

    invoke-direct {p0, v0}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Build.PRODUCT: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBuild.MANUFACTURER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBuild.BRAND: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBuild.DEVICE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBuild.MODEL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBuild.HARDWARE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBuild.FINGERPRINT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 2
    const-string v0, "android.os.SystemProperties"

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 4
    const-string v0, "get"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-array p2, v1, [Ljava/lang/Object;

    aput-object v2, p2, v4

    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/util/EmulatorDetector;->isDebug:Z

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcom/gpc/util/EmulatorDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/gpc/util/EmulatorDetector;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/util/EmulatorDetector;->mEmulatorDetector:Lcom/gpc/util/EmulatorDetector;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/util/EmulatorDetector;

    invoke-direct {v0, p0}, Lcom/gpc/util/EmulatorDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gpc/util/EmulatorDetector;->mEmulatorDetector:Lcom/gpc/util/EmulatorDetector;

    .line 3
    :cond_0
    sget-object p0, Lcom/gpc/util/EmulatorDetector;->mEmulatorDetector:Lcom/gpc/util/EmulatorDetector;

    return-object p0
.end method


# virtual methods
.method public addPackageName(Ljava/lang/String;)Lcom/gpc/util/EmulatorDetector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/util/EmulatorDetector;->mListPackageName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPackageName(Ljava/util/List;)Lcom/gpc/util/EmulatorDetector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/util/EmulatorDetector;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/gpc/util/EmulatorDetector;->mListPackageName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public detect(Lcom/gpc/util/EmulatorDetector$OnEmulatorDetectorListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gpc/util/EmulatorDetector$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/util/EmulatorDetector$a;-><init>(Lcom/gpc/util/EmulatorDetector;Lcom/gpc/util/EmulatorDetector$OnEmulatorDetectorListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public detect()Z
    .locals 3

    .line 12
    invoke-static {}, Lcom/gpc/util/EmulatorDetector;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/gpc/util/EmulatorDetector;->checkBasic()Z

    move-result v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Check basic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/gpc/util/EmulatorDetector;->checkAdvanced()Z

    move-result v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Check Advanced "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    .line 28
    invoke-direct {p0}, Lcom/gpc/util/EmulatorDetector;->checkPackageName()Z

    move-result v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Check Package Name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public getPackageNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/util/EmulatorDetector;->mListPackageName:Ljava/util/List;

    return-object v0
.end method

.method public isCheckTelephony()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/util/EmulatorDetector;->isTelephony:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/util/EmulatorDetector;->isDebug:Z

    return v0
.end method

.method public isKapouEmulator()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/util/EmulatorDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 5
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6
    const-string v2, "com.kapou.launcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Kapou:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gpc/util/EmulatorDetector;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckTelephony(Z)Lcom/gpc/util/EmulatorDetector;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/util/EmulatorDetector;->isTelephony:Z

    return-object p0
.end method

.method public setDebug(Z)Lcom/gpc/util/EmulatorDetector;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/util/EmulatorDetector;->isDebug:Z

    return-object p0
.end method
