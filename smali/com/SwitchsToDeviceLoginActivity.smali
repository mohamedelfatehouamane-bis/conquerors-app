.class public Lcom/SwitchsToDeviceLoginActivity;
.super Lcom/BaseActivity;
.source "SwitchsToDeviceLoginActivity.java"


# static fields
.field private static GameInstance:Lcom/igg/android/conquerors/col; = null

.field public static final TAG:Ljava/lang/String; = "SwitchsToLoginDemoActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method

.method public static init(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 16
    sput-object p0, Lcom/SwitchsToDeviceLoginActivity;->GameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/SwitchsToDeviceLoginActivity;->requestWindowFeature(I)Z

    .line 24
    sget p1, Lcom/igg/android/conquerors/R$layout;->activity_empty:I

    invoke-virtual {p0, p1}, Lcom/SwitchsToDeviceLoginActivity;->setContentView(I)V

    return-void
.end method
