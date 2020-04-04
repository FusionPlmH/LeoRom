.class public final Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;,
        Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;,
        Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;,
        Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;,
        Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutomataLanguageLocaleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mKeyboardAssistanceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private final mLastHardKeyboards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoaderIDs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextLoaderId:I

.field private mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field private mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SecSwitchPreference;

.field private mShowVirtualKeyboardSwitchForDeX:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private final mTempKeyboardInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    new-instance v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$2;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$3;

    new-instance v1, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Z)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$3;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->toggleKeyboardShortcutsMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->onLoadFinishedInternal(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->isDesktopEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private clearLoader()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private getAutomataKeyboardLocaleList()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    const-string v1, "automata_language_locale_list"

    const-string v2, ""

    const-string v3, "automata_language_locale_list"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_1

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "NAME"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "NAME"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "automata_language_locale_list"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "VALUE"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v6

    :cond_0
    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4

    :catch_0
    move-exception v4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v4

    if-lez v6, :cond_4

    const/4 v6, 0x0

    :goto_3
    array-length v7, v4

    if-ge v6, v7, :cond_4

    aget-object v7, v4, v6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "PhysicalKeyboardFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aAutomataResult["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v4, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    return-object v5
.end method

.method public static getHardKeyboards()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;-><init>(Ljava/lang/String;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static isDesktopEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInAutomataLanguageList(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mAutomataLanguageLocaleList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mAutomataLanguageLocaleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method public static synthetic lambda$onLoadFinishedInternal$0(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;Landroid/support/v7/preference/Preference;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->getSubTypeName()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f120b89

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method public static synthetic lambda$onLoadFinishedInternal$1(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->showKeyboardLayoutScreen(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    const/4 v0, 0x1

    return v0
.end method

.method private onLoadFinishedInternal(ILjava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

    new-instance v4, Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v5, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    iget-object v5, v5, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->setOrder(I)V

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v5, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mKeyboardInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;

    iget-object v8, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v8, v7, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v9, v7, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v8, :cond_3

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->isInAutomataLanguageList(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "PhysicalKeyboardFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "imSubType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v11, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v7, v10, v6}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;ZLcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;)V

    invoke-virtual {v11}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->isAutoMataLanguage()Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v12, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$oZL3kNolGK2AmATRtafZH0ifmP4;

    invoke-direct {v12, v0, v11}, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$oZL3kNolGK2AmATRtafZH0ifmP4;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;)V

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2

    :cond_2
    new-instance v12, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$bK39_TCo3fpJyD2gwB3yK6OLfAY;

    invoke-direct {v12, v0, v3, v8, v9}, Lcom/samsung/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$bK39_TCo3fpJyD2gwB3yK6OLfAY;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :goto_2
    iget-object v12, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3
    iget-object v10, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    invoke-virtual {v4, v11}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    :cond_4
    goto/16 :goto_1

    :cond_5
    goto/16 :goto_0

    :cond_6
    iget-object v2, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->setOrder(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-direct {v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    invoke-direct {v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitchForDex()V

    return-void
.end method

.method private registerShowVirtualKeyboardSettingsObserver()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->unregisterShowVirtualKeyboardSettingsObserver()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_ime_with_hard_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    return-void
.end method

.method private showKeyboardLayoutScreen(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "input_method_info"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "input_method_subtype"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/samsung/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f120c32

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private toggleKeyboardShortcutsMenu()V
    .locals 2

    const-string v0, "PhysicalKeyboardFragment"

    const-string v1, "toggleKeyboardShortcutsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->requestShowKeyboardShortcuts()V

    return-void
.end method

.method private unregisterShowVirtualKeyboardSettingsObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateHardKeyboards()V
    .locals 7

    invoke-static {}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getHardKeyboards()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->clearLoader()V

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    iget v2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-direct {v4, v5, p0, v6}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    :cond_0
    return-void
.end method

.method private updateShowVirtualKeyboardSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateShowVirtualKeyboardSwitchForDex()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyboard_dex"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->getStringFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x15a

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f1500eb

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->addPreferencesFromResource(I)V

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    new-instance v1, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v1, "keyboard_assistance_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string v2, "show_virtual_keyboard_switch"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getAutomataKeyboardLocaleList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mAutomataLanguageLocaleList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string v2, "show_virtual_keyboard_switch_for_dex"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->isDesktopEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_0
    const-string v1, "keyboard_shortcuts_helper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->clearLoader()V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->unregisterShowVirtualKeyboardSettingsObserver()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->clearLoader()V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitchForDex()V

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->registerShowVirtualKeyboardSettingsObserver()V

    return-void
.end method
