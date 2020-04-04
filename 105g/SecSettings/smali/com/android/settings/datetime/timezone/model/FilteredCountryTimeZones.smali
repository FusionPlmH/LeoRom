.class public Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;
.super Ljava/lang/Object;
.source "FilteredCountryTimeZones.java"


# instance fields
.field private final mCountryTimeZones:Llibcore/util/CountryTimeZones;

.field mDisableTimeZoneLists:Ljava/lang/String;

.field mDisableTimeZoneListsArr:[Ljava/lang/String;

.field private final mTimeZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llibcore/util/CountryTimeZones;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/general/GeneralUtils;->getDisableTimeZoneLists()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mDisableTimeZoneLists:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mCountryTimeZones:Llibcore/util/CountryTimeZones;

    invoke-virtual {p1}, Llibcore/util/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$4MxYnMuZMfSQu2iAD-J0AM_CAoE;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$4MxYnMuZMfSQu2iAD-J0AM_CAoE;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ISUVeCzEqV6U2C82Sgby5UdDf3Y;->INSTANCE:Lcom/android/settings/datetime/timezone/model/-$$Lambda$FilteredCountryTimeZones$ISUVeCzEqV6U2C82Sgby5UdDf3Y;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mDisableTimeZoneLists:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mDisableTimeZoneLists:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mDisableTimeZoneListsArr:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mDisableTimeZoneListsArr:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mTimeZoneIds:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$new$0(Llibcore/util/CountryTimeZones$TimeZoneMapping;)Z
    .locals 4

    iget-boolean v0, p0, Llibcore/util/CountryTimeZones$TimeZoneMapping;->showInPicker:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Llibcore/util/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/util/CountryTimeZones$TimeZoneMapping;->notUsedAfter:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x160af049000L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$new$1(Llibcore/util/CountryTimeZones$TimeZoneMapping;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/util/CountryTimeZones$TimeZoneMapping;->timeZoneId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getRegionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mCountryTimeZones:Llibcore/util/CountryTimeZones;

    invoke-virtual {v0}, Llibcore/util/CountryTimeZones;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->normalizeRegionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mTimeZoneIds:Ljava/util/List;

    return-object v0
.end method
