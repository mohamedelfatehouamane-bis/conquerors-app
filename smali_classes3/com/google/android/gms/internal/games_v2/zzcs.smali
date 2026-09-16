.class final synthetic Lcom/google/android/gms/internal/games_v2/zzcs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Z

.field private final synthetic zzc:Ljava/util/List;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcs;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/games_v2/zzcs;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzcs;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcs;->zzc:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzcs;->zza:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/games_v2/zzcs;->zzb:Z

    invoke-static {v0}, Lcom/google/android/gms/games/gamessignin/AuthScope;->zza(Ljava/util/List;)Lcom/google/android/gms/internal/games_v2/zzhd;

    move-result-object v0

    .line 2
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/games/internal/zzah;->zzS(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;ZLjava/util/List;)V

    return-void
.end method
