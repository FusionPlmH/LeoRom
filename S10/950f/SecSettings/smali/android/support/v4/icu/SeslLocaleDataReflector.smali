.class public Landroid/support/v4/icu/SeslLocaleDataReflector;
.super Ljava/lang/Object;
.source "SeslLocaleDataReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataApi21Impl;,
        Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataApi21Impl;-><init>(Landroid/support/v4/icu/SeslLocaleDataReflector$1;)V

    sput-object v0, Landroid/support/v4/icu/SeslLocaleDataReflector;->IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;

    return-void
.end method

.method public static get(Ljava/util/Locale;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/support/v4/icu/SeslLocaleDataReflector;->IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;->get(Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getField_amPm(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/icu/SeslLocaleDataReflector;->IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;->getField_amPm(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getField_narrowAm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/icu/SeslLocaleDataReflector;->IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;->getField_narrowAm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getField_narrowPm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/icu/SeslLocaleDataReflector;->IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;->getField_narrowPm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getField_zeroDigit(Ljava/lang/Object;)C
    .locals 1

    sget-object v0, Landroid/support/v4/icu/SeslLocaleDataReflector;->IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;->getField_zeroDigit(Ljava/lang/Object;)C

    move-result v0

    return v0
.end method
