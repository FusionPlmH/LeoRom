.class public final synthetic Lcom/samsung/android/settings/lockscreen/-$$Lambda$DualClockSetting$8R71xjw7wECusYZlGOr2u3JBKIc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/settings/lockscreen/DualClockSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/lockscreen/DualClockSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/-$$Lambda$DualClockSetting$8R71xjw7wECusYZlGOr2u3JBKIc;->f$0:Lcom/samsung/android/settings/lockscreen/DualClockSetting;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/-$$Lambda$DualClockSetting$8R71xjw7wECusYZlGOr2u3JBKIc;->f$0:Lcom/samsung/android/settings/lockscreen/DualClockSetting;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/lockscreen/DualClockSetting;->lambda$initWhereToShowPreference$0(Lcom/samsung/android/settings/lockscreen/DualClockSetting;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
