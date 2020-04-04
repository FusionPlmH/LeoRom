.class Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;
.super Ljava/lang/Object;
.source "NavigationBarGesturePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->showOneHandModeDisablePopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updateRadioButtonSelectState()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$402(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;Z)Z

    return-void
.end method
