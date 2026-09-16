.class public Lcom/MailAccount;
.super Ljava/lang/Object;
.source "MailAccount.java"


# static fields
.field private static GameInstance:Lcom/igg/android/conquerors/col;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forgetPassword()V
    .locals 0

    return-void
.end method

.method public static init(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 11
    sput-object p0, Lcom/MailAccount;->GameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method

.method public static requestMailBind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static requestMailBind2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static requestMailCreateAndLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static requestMailHasBind()V
    .locals 0

    return-void
.end method

.method public static requestMailLogin(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public static requestMailVerification(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static sendMailVerifyCode(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
