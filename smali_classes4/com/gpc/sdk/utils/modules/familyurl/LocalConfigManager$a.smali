.class public Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getAppConfUrl(Lcom/gpc/sdk/GPCSDKConstant$CDNType;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager$a;->b:Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    iput-object p2, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public URL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager$a;->a:Ljava/lang/String;

    return-object v0
.end method
