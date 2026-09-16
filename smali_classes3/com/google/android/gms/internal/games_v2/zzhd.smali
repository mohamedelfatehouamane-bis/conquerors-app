.class public abstract Lcom/google/android/gms/internal/games_v2/zzhd;
.super Lcom/google/android/gms/internal/games_v2/zzgy;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/games_v2/zzim;

.field public static final synthetic zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzha;

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzhz;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/games_v2/zzha;-><init>(Lcom/google/android/gms/internal/games_v2/zzhd;I)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzhd;->zza:Lcom/google/android/gms/internal/games_v2/zzim;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzgy;-><init>()V

    return-void
.end method

.method public static zzh()Ljava/util/stream/Collector;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgm;->zza()Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static zzi()Lcom/google/android/gms/internal/games_v2/zzhd;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzhz;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    return-object v0
.end method

.method public static zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzhd;
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzhs;->zza([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzk([Ljava/lang/Object;I)Lcom/google/android/gms/internal/games_v2/zzhd;

    move-result-object p0

    return-object p0
.end method

.method static zzk([Ljava/lang/Object;I)Lcom/google/android/gms/internal/games_v2/zzhd;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/games_v2/zzhz;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzhz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games_v2/zzhz;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzhd;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 5
    :cond_2
    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 6
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/games_v2/zzft;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0

    .line 7
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 8
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    .line 10
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 12
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/games_v2/zzft;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    .line 13
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_9

    return v0

    :cond_9
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzhd;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/games_v2/zzhd;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzl(I)Lcom/google/android/gms/internal/games_v2/zzim;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzl(I)Lcom/google/android/gms/internal/games_v2/zzim;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzl(I)Lcom/google/android/gms/internal/games_v2/zzim;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzg(II)Lcom/google/android/gms/internal/games_v2/zzhd;

    move-result-object p1

    return-object p1
.end method

.method public final zza()Lcom/google/android/gms/internal/games_v2/zzil;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzl(I)Lcom/google/android/gms/internal/games_v2/zzim;

    move-result-object v0

    return-object v0
.end method

.method zze([Ljava/lang/Object;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzhd;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public zzf()Lcom/google/android/gms/internal/games_v2/zzhd;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzhd;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzhb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/games_v2/zzhb;-><init>(Lcom/google/android/gms/internal/games_v2/zzhd;)V

    return-object v0
.end method

.method public zzg(II)Lcom/google/android/gms/internal/games_v2/zzhd;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzhd;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/games_v2/zzfu;->zzd(III)V

    sub-int/2addr p2, p1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzhd;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/games_v2/zzhz;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzhc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzhc;-><init>(Lcom/google/android/gms/internal/games_v2/zzhd;II)V

    return-object v0
.end method

.method public final zzl(I)Lcom/google/android/gms/internal/games_v2/zzim;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzhd;->size()I

    move-result v0

    const-string v1, "index"

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zzc(IILjava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzhd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/games_v2/zzhd;->zza:Lcom/google/android/gms/internal/games_v2/zzim;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzha;

    .line 4
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games_v2/zzha;-><init>(Lcom/google/android/gms/internal/games_v2/zzhd;I)V

    return-object v0
.end method
