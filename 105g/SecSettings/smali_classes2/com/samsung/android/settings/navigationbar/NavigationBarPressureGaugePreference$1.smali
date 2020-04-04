.class Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;
.super Ljava/lang/Object;
.source "NavigationBarPressureGaugePreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->semGetForcePressure()F

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    const-string v4, "NavigationBarPressureGaugePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch : actionType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  / pressure "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-static {v5, v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;IF)I

    move-result v5

    invoke-static {v4, v1, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;II)V

    return v3
.end method
