.class Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference$1;
.super Ljava/lang/Object;
.source "SecSoundModeRadioPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference$1;->this$0:Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->access$000(Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
