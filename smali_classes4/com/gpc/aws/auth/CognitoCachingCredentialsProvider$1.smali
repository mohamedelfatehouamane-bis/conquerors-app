.class Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;
.super Ljava/lang/Object;
.source "CognitoCachingCredentialsProvider.java"

# interfaces
.implements Lcom/gpc/aws/auth/IdentityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;


# direct methods
.method constructor <init>(Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;->this$0:Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public identityChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-static {}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->access$000()Lcom/gpc/aws/logging/Log;

    move-result-object p1

    const-string v0, "Identity id is changed"

    invoke-interface {p1, v0}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;->this$0:Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;

    invoke-static {p1, p2}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->access$100(Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider$1;->this$0:Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {p1}, Lcom/gpc/aws/auth/CognitoCachingCredentialsProvider;->clearCredentials()V

    return-void
.end method
