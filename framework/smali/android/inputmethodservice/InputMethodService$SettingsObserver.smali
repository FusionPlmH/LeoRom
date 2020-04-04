.class final Landroid/inputmethodservice/InputMethodService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$SettingsObserver$ShowImeWithHardKeyboardTypeForDEX;,
        Landroid/inputmethodservice/InputMethodService$SettingsObserver$ShowImeWithHardKeyboardType;
    }
.end annotation


# instance fields
.field private final mService:Landroid/inputmethodservice/InputMethodService;

.field private mShowImeWithHardKeyboard:I

.field private mShowImeWithHardKeyboardForDEX:I
    .annotation build Landroid/inputmethodservice/InputMethodService$SettingsObserver$ShowImeWithHardKeyboardTypeForDEX;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboardForDEX:I

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method static synthetic access$2200(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z
    .locals 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->shouldShowImeWithHardKeyboard()Z

    move-result v0

    return v0
.end method

.method public static createAndRegister(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;
    .locals 5

    new-instance v0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_current_color"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "com.sec.android.desktopmode.uiservice"

    invoke-static {p0, v1}, Landroid/inputmethodservice/InputMethodService;->access$1100(Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodService;->access$1200(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->access$1300()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "touch_keyboard"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->access$1300()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "keyboard_dex"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_use_theme_default"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_theme_color"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-object v0
.end method

.method private shouldShowImeWithHardKeyboard()Z
    .locals 5

    iget v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    nop

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iput v3, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->access$1500(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboardForDEX:I

    const-string v1, "InputMethodService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mShowImeWithHardKeyboardForDEX() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboardForDEX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService;->access$1600(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService;->access$1700(Landroid/inputmethodservice/InputMethodService;)I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService;->access$1800(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboardForDEX:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "InputMethodService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected mShowImeWithHardKeyboard="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboardForDEX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_0
    return v2

    :pswitch_1
    return v3

    :cond_6
    iget v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    packed-switch v1, :pswitch_data_1

    const-string v1, "InputMethodService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected mShowImeWithHardKeyboard="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_2
    return v2

    :pswitch_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 11

    const-string v0, "InputMethodService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings on Change uri :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_current_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_use_theme_default"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "navigationbar_theme_color"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->access$1900()Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "touch_keyboard"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->access$1900()Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "keyboard_dex"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v6, :cond_1

    nop

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v6}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "show_ime_with_hard_keyboard"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v7, v8

    nop

    :cond_0
    iput v7, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v6}, Landroid/inputmethodservice/InputMethodService;->access$2000(Landroid/inputmethodservice/InputMethodService;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v6}, Landroid/inputmethodservice/InputMethodService;->access$1500(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v7, v8

    nop

    :cond_3
    iput v7, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboardForDEX:I

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v7}, Landroid/inputmethodservice/InputMethodService;->access$2000(Landroid/inputmethodservice/InputMethodService;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v6, v7}, Landroid/inputmethodservice/InputMethodService;->access$2100(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InputMethodService;)V

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v6}, Landroid/inputmethodservice/InputMethodService;->access$2000(Landroid/inputmethodservice/InputMethodService;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver{mShowImeWithHardKeyboard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregister()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
