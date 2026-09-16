.class final synthetic Lcom/google/android/gms/internal/games_v2/zzeq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzer;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzeq;->zza:Lcom/google/android/gms/internal/games_v2/zzer;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzfm;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/games_v2/zzfm;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzal;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzeo;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzeq;->zza:Lcom/google/android/gms/internal/games_v2/zzer;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/games_v2/zzeo;-><init>(Lcom/google/android/gms/internal/games_v2/zzer;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const-string p2, "unusedServerClientId"

    .line 2
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/games_v2/zzal;->zzd(Lcom/google/android/gms/internal/games_v2/zzai;Ljava/lang/String;)V

    return-void
.end method
