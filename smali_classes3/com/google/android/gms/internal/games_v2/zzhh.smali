.class public final Lcom/google/android/gms/internal/games_v2/zzhh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhh;->zza:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/games_v2/zzhw;)Lcom/google/android/gms/internal/games_v2/zzhh;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhh;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "range must not be empty, but was %s"

    .line 3
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/games_v2/zzfv;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzb(Lcom/google/android/gms/internal/games_v2/zzhh;)Lcom/google/android/gms/internal/games_v2/zzhh;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/games_v2/zzhh;->zza:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzhw;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzhh;->zza(Lcom/google/android/gms/internal/games_v2/zzhw;)Lcom/google/android/gms/internal/games_v2/zzhh;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/games_v2/zzhi;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgz;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzhh;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/games_v2/zzgz;-><init>(I)V

    .line 2
    sget v2, Lcom/google/android/gms/internal/games_v2/zzhw;->zzc:I

    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzhv;->zza:Lcom/google/android/gms/internal/games_v2/zzht;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/games_v2/zzhn;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/games_v2/zzhn;

    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzhn;

    .line 5
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/games_v2/zzhn;-><init>(Ljava/util/Iterator;)V

    move-object v1, v2

    .line 6
    :goto_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/games_v2/zzhu;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/games_v2/zzhu;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/games_v2/zzhw;

    .line 8
    :goto_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/games_v2/zzhu;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/games_v2/zzhu;->zza()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/games_v2/zzhw;

    iget-object v4, v2, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    .line 10
    iget-object v5, v3, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc(Lcom/google/android/gms/internal/games_v2/zzgu;)I

    move-result v4

    if-gtz v4, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    iget-object v5, v2, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    .line 11
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc(Lcom/google/android/gms/internal/games_v2/zzgu;)I

    move-result v4

    if-gtz v4, :cond_1

    .line 12
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/games_v2/zzhw;->zzc(Lcom/google/android/gms/internal/games_v2/zzhw;)Lcom/google/android/gms/internal/games_v2/zzhw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb()Z

    move-result v4

    const-string v5, "Overlapping ranges not permitted but found %s overlapping %s"

    .line 13
    invoke-static {v4, v5, v2, v3}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/games_v2/zzhu;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/games_v2/zzhw;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/games_v2/zzhw;->zzd(Lcom/google/android/gms/internal/games_v2/zzhw;)Lcom/google/android/gms/internal/games_v2/zzhw;

    move-result-object v2

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/games_v2/zzgz;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzgz;

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgz;->zze()Lcom/google/android/gms/internal/games_v2/zzhd;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzhi;->zza()Lcom/google/android/gms/internal/games_v2/zzhi;

    move-result-object v0

    return-object v0

    .line 19
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzl(I)Lcom/google/android/gms/internal/games_v2/zzim;

    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 19
    check-cast v3, Lcom/google/android/gms/internal/games_v2/zzhw;

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzhw;->zza()Lcom/google/android/gms/internal/games_v2/zzhw;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/games_v2/zzhw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzhi;->zzb()Lcom/google/android/gms/internal/games_v2/zzhi;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "expected one element but was: <"

    .line 25
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v3, 0x4

    if-ge v1, v3, :cond_5

    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ", "

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 28
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 31
    :cond_6
    const-string v1, ", ..."

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v1, 0x3e

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 31
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzhi;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzhi;-><init>(Lcom/google/android/gms/internal/games_v2/zzhd;)V

    return-object v1
.end method
