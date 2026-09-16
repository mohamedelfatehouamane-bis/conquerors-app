.class public final enum Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

.field public static final enum GPCRealNameVerificationAuthorized:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

.field public static final enum GPCRealNameVerificationDenied:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

.field public static final enum GPCRealNameVerificationExempted:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

.field public static final enum GPCRealNameVerificationSumbitted:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

.field public static final enum GPCRealNameVerificationUnauthorized:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

.field public static final enum GPCRealNameVerificationUnknown:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;
    .locals 3

    const/4 v0, 0x6

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    sget-object v1, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationSumbitted:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationAuthorized:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationDenied:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationUnauthorized:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationExempted:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationUnknown:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    const-string v1, "GPCRealNameVerificationSumbitted"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationSumbitted:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    .line 5
    new-instance v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    const-string v1, "GPCRealNameVerificationAuthorized"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationAuthorized:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    .line 9
    new-instance v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    const-string v1, "GPCRealNameVerificationDenied"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationDenied:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    .line 13
    new-instance v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "GPCRealNameVerificationUnauthorized"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationUnauthorized:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    .line 17
    new-instance v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    const/4 v1, 0x4

    const/4 v2, -0x2

    const-string v3, "GPCRealNameVerificationExempted"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationExempted:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    .line 21
    new-instance v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    const/4 v1, 0x5

    const/16 v2, -0x63

    const-string v3, "GPCRealNameVerificationUnknown"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationUnknown:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    .line 22
    invoke-static {}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->$values()[Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->$VALUES:[Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->$VALUES:[Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    invoke-virtual {v0}, [Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->value:I

    return v0
.end method
