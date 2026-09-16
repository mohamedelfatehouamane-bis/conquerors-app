.class public final enum Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

.field public static final enum GPCPassportLoginBehaviorBrowser:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

.field public static final enum GPCPassportLoginBehaviorNative:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    const-string v1, "GPCPassportLoginBehaviorNative"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->GPCPassportLoginBehaviorNative:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    .line 5
    new-instance v0, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    const-string v1, "GPCPassportLoginBehaviorBrowser"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->GPCPassportLoginBehaviorBrowser:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    .line 6
    invoke-static {}, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->a()[Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->$VALUES:[Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->value:I

    return-void
.end method

.method public static synthetic a()[Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    sget-object v1, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->GPCPassportLoginBehaviorNative:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->GPCPassportLoginBehaviorBrowser:Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->$VALUES:[Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    invoke-virtual {v0}, [Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/account/passport/bean/GPCPassportLoginBehavior;->value:I

    return v0
.end method
