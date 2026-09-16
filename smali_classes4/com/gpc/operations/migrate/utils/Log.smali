.class public Lcom/gpc/operations/migrate/utils/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/utils/Log$LogAdapter;
    }
.end annotation


# static fields
.field private static sAdapter:Lcom/gpc/operations/migrate/utils/Log$LogAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/utils/Log;->sAdapter:Lcom/gpc/operations/migrate/utils/Log$LogAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0, p1}, Lcom/gpc/operations/migrate/utils/Log$LogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/gpc/operations/migrate/utils/Log;->sAdapter:Lcom/gpc/operations/migrate/utils/Log$LogAdapter;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0, p1, p2}, Lcom/gpc/operations/migrate/utils/Log$LogAdapter;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/utils/Log;->sAdapter:Lcom/gpc/operations/migrate/utils/Log$LogAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0, p1, p2}, Lcom/gpc/operations/migrate/utils/Log$LogAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/utils/Log;->sAdapter:Lcom/gpc/operations/migrate/utils/Log$LogAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/gpc/operations/migrate/utils/Log$LogAdapter;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/gpc/operations/migrate/utils/Log;->sAdapter:Lcom/gpc/operations/migrate/utils/Log$LogAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0, p1, p2}, Lcom/gpc/operations/migrate/utils/Log$LogAdapter;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static setsAdapter(Lcom/gpc/operations/migrate/utils/Log$LogAdapter;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/gpc/operations/migrate/utils/Log;->sAdapter:Lcom/gpc/operations/migrate/utils/Log$LogAdapter;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/utils/Log;->sAdapter:Lcom/gpc/operations/migrate/utils/Log$LogAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/gpc/operations/migrate/utils/Log$LogAdapter;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/utils/Log;->sAdapter:Lcom/gpc/operations/migrate/utils/Log$LogAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0, p1, p2}, Lcom/gpc/operations/migrate/utils/Log$LogAdapter;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
