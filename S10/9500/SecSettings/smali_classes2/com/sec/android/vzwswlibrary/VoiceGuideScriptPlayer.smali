.class public Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;
.super Ljava/lang/Object;
.source "VoiceGuideScriptPlayer.java"


# instance fields
.field private mIBixbyScriptPlayerStates:Lcom/sec/android/app/vzwswlibrary/ui/IVoiceGuideScriptPlayerStates;

.field private mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;


# direct methods
.method static synthetic access$002(Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;)Lcom/sec/android/app/vzwswlibrary/ui/IVoiceGuideScriptPlayerStates;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;->mIBixbyScriptPlayerStates:Lcom/sec/android/app/vzwswlibrary/ui/IVoiceGuideScriptPlayerStates;

    return-object v0
.end method
