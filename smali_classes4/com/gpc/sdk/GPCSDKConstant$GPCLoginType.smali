.class public final enum Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/GPCSDKConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GPCLoginType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum AMAZON:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum Email:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum FACEBOOK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum GOOGLE_PLAY:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum GPC:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum GPC_ACCOUNT:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum GUEST:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum HUAWEI:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum INSTAGRAM:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum LINE:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum NONE:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum PHONE_NO:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum QUICK_SDK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum TWITTER:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum VK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

.field public static final enum WECHAT:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;
    .locals 3

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->NONE:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GUEST:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GOOGLE_PLAY:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GPC:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->Email:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->FACEBOOK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->PHONE_NO:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->WECHAT:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->AMAZON:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->VK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->TWITTER:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->LINE:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->INSTAGRAM:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GPC_ACCOUNT:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->HUAWEI:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->QUICK_SDK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->NONE:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 6
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "GUEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GUEST:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 11
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "GOOGLE_PLAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GOOGLE_PLAY:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 16
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "GPC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GPC:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 21
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "Email"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->Email:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 26
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "FACEBOOK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->FACEBOOK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 31
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "PHONE_NO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->PHONE_NO:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 37
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "WECHAT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->WECHAT:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 42
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "AMAZON"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->AMAZON:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 47
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "VK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->VK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 52
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "TWITTER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->TWITTER:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 57
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "LINE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->LINE:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 62
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "INSTAGRAM"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->INSTAGRAM:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 67
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "GPC_ACCOUNT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GPC_ACCOUNT:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 72
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "HUAWEI"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->HUAWEI:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 77
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    const-string v1, "QUICK_SDK"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->QUICK_SDK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 78
    invoke-static {}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->$values()[Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final getInstanceFromTypeName(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;
    .locals 1

    .line 1
    const-string v0, "facebook"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->FACEBOOK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 5
    :cond_0
    const-string v0, "googleplus"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GOOGLE_PLAY:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 9
    :cond_1
    const-string v0, "twitter"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->TWITTER:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 13
    :cond_2
    const-string v0, "wechat"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->WECHAT:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 17
    :cond_3
    const-string v0, "vk"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->VK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 21
    :cond_4
    const-string v0, "line"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->LINE:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 25
    :cond_5
    const-string v0, "instagram"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->INSTAGRAM:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 29
    :cond_6
    const-string v0, "amazon"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->AMAZON:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 33
    :cond_7
    const-string v0, "phone_no"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->PHONE_NO:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 37
    :cond_8
    const-string v0, "gpc"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GPC:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 41
    :cond_9
    const-string v0, "guest"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 42
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GUEST:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 45
    :cond_a
    const-string v0, "email"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->Email:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 49
    :cond_b
    const-string v0, "gpcaccount"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 50
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GPC_ACCOUNT:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 53
    :cond_c
    const-string v0, "huawei"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 54
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->HUAWEI:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 57
    :cond_d
    const-string v0, "quicksdk"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 58
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->QUICK_SDK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0

    .line 61
    :cond_e
    sget-object p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->NONE:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0
.end method

.method public static getLoginTypeValue(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 3
    :try_start_0
    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    const-string p0, "quicksdk"

    return-object p0

    .line 62
    :pswitch_1
    const-string p0, "huawei"

    return-object p0

    .line 63
    :pswitch_2
    const-string p0, "gpcaccount"

    return-object p0

    .line 64
    :pswitch_3
    const-string p0, "instagram"

    return-object p0

    .line 65
    :pswitch_4
    const-string p0, "line"

    return-object p0

    .line 66
    :pswitch_5
    const-string p0, "twitter"

    return-object p0

    .line 67
    :pswitch_6
    const-string p0, "vk"

    return-object p0

    .line 68
    :pswitch_7
    const-string p0, "amazon"

    return-object p0

    .line 69
    :pswitch_8
    const-string p0, "wechat"

    return-object p0

    .line 70
    :pswitch_9
    const-string p0, "phone_no"

    return-object p0

    .line 71
    :pswitch_a
    const-string p0, "facebook"

    return-object p0

    .line 72
    :pswitch_b
    const-string p0, "email"

    return-object p0

    .line 73
    :pswitch_c
    const-string p0, "gpc"

    return-object p0

    .line 74
    :pswitch_d
    const-string p0, "googleplus"

    return-object p0

    .line 75
    :pswitch_e
    const-string p0, "guest"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 135
    const-string v1, "GPCSDKConstant"

    invoke-static {v1, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-virtual {v0}, [Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    return-object v0
.end method
