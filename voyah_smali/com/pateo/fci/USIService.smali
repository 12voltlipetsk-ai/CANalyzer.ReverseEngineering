.class public interface abstract Lcom/pateo/fci/USIService;
.super Ljava/lang/Object;
.source "USIService.java"


# static fields
.field public static final AUTHORIZATION_KEY:Ljava/lang/String; = "Authorization"


# virtual methods
.method public abstract activateLoginUser(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/user/activateLogin"
    .end annotation
.end method

.method public abstract activateLoginUser(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/user/activateLogin"
    .end annotation
.end method

.method public abstract createContact(Lcom/pateo/fci/models/usi/Contact;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lcom/pateo/fci/models/usi/Contact;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/models/usi/Contact;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ContactResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/contact/create"
    .end annotation
.end method

.method public abstract createContact(Lcom/pateo/fci/models/usi/Contact;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lcom/pateo/fci/models/usi/Contact;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/models/usi/Contact;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ContactResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/contact/create"
    .end annotation
.end method

.method public abstract createIdentifiedMusic(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/IdentifiedMusicResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/identifiedmusic/create"
    .end annotation
.end method

.method public abstract createIdentifiedMusic(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/IdentifiedMusicResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/identifiedmusic/create"
    .end annotation
.end method

.method public abstract createPreference(Lcom/pateo/fci/models/usi/Preference;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lcom/pateo/fci/models/usi/Preference;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/models/usi/Preference;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/PreferenceResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/preference/create"
    .end annotation
.end method

.method public abstract createPreference(Lcom/pateo/fci/models/usi/Preference;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lcom/pateo/fci/models/usi/Preference;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/models/usi/Preference;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/PreferenceResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/preference/create"
    .end annotation
.end method

.method public abstract createSchedule(Lcom/pateo/fci/models/usi/Schedule;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lcom/pateo/fci/models/usi/Schedule;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/models/usi/Schedule;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ScheduleResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/schedule/update"
    .end annotation
.end method

.method public abstract createSchedule(Lcom/pateo/fci/models/usi/Schedule;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lcom/pateo/fci/models/usi/Schedule;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/models/usi/Schedule;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ScheduleResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/schedule/update"
    .end annotation
.end method

.method public abstract createUserProfile(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/userProfile/create"
    .end annotation
.end method

.method public abstract createUserProfile(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/userProfile/create"
    .end annotation
.end method

.method public abstract loginUser(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/user/login"
    .end annotation
.end method

.method public abstract loginUser(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/user/login"
    .end annotation
.end method

.method public abstract loginUserGeely(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponseGeely;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/user/login"
    .end annotation
.end method

.method public abstract loginUserGeely(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponseGeely;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/user/login"
    .end annotation
.end method

.method public abstract logoutUser(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/user/logout"
    .end annotation
.end method

.method public abstract logoutUser(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/user/logout"
    .end annotation
.end method

.method public abstract qrCodeLoginUser(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/user/qrCodeLogin"
    .end annotation
.end method

.method public abstract qrCodeLoginUser(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/user/qrCodeLogin"
    .end annotation
.end method

.method public abstract queryContact(Ljava/lang/String;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ContactResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/contact/query/{key}"
    .end annotation
.end method

.method public abstract queryContact(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ContactResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/contact/query/{key}"
    .end annotation
.end method

.method public abstract queryContactById(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ContactResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/contact/query/{key}/{id}"
    .end annotation
.end method

.method public abstract queryContactById(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ContactResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/contact/query/{key}/{id}"
    .end annotation
.end method

.method public abstract queryContactByName(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ContactResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/contact/query/{key}/name/{name}"
    .end annotation
.end method

.method public abstract queryContactByName(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ContactResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/contact/query/{key}/name/{name}"
    .end annotation
.end method

.method public abstract queryHolidays(Ljava/lang/String;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "year"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/HolidaysResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/calendar/query/holidays/{year}"
    .end annotation
.end method

.method public abstract queryHolidays(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "year"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/HolidaysResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/calendar/query/holidays/{year}"
    .end annotation
.end method

.method public abstract queryIdentifiedMusic(Ljava/lang/String;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/IdentifiedMusicResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/identifiedmusic/query/{key}"
    .end annotation
.end method

.method public abstract queryIdentifiedMusic(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "provider"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/IdentifiedMusicResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/identifiedmusic/query/{key}/{provider}"
    .end annotation
.end method

.method public abstract queryIdentifiedMusic(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/IdentifiedMusicResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/identifiedmusic/query/{key}"
    .end annotation
.end method

.method public abstract queryIdentifiedMusic(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "provider"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/IdentifiedMusicResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/identifiedmusic/query/{key}/{provider}"
    .end annotation
.end method

.method public abstract queryPreference(Ljava/lang/String;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/PreferenceResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/preference/query/{key}"
    .end annotation
.end method

.method public abstract queryPreference(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/PreferenceResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/preference/query/{key}"
    .end annotation
.end method

.method public abstract queryPreferenceByApp(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "app"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/PreferenceResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/preference/query/{key}/{app}"
    .end annotation
.end method

.method public abstract queryPreferenceByApp(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "app"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/PreferenceResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/preference/query/{key}/{app}"
    .end annotation
.end method

.method public abstract querySchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "startDate"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "endDate"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ScheduleResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/schedule/query/{key}/{startDate}/{endDate}"
    .end annotation
.end method

.method public abstract querySchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "startDate"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "endDate"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ScheduleResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/schedule/query/{key}/{startDate}/{endDate}"
    .end annotation
.end method

.method public abstract queryUserProfile(Ljava/lang/String;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "username"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/userProfile/query/{username}"
    .end annotation
.end method

.method public abstract queryUserProfile(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "username"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/userProfile/query/{username}"
    .end annotation
.end method

.method public abstract registerUser(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/user/register"
    .end annotation
.end method

.method public abstract registerUser(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/UserProfileResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/user/register"
    .end annotation
.end method

.method public abstract softwareUpgradeVersionSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/usi/UpdateResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "type"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/softwareUpgradeVersionSearch/{pdsn}/{type}"
    .end annotation
.end method

.method public abstract softwareUpgradeVersionSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/usi/UpdateResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vhlType"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/softwareUpgradeVersionSearch/{pdsn}/{type}/{vhlType}"
    .end annotation
.end method

.method public abstract softwareUpgradeVersionSearch(Ljava/lang/String;Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/usi/UpdateResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/softwareUpgradeVersionSearch"
    .end annotation
.end method

.method public abstract softwareUpgradeVersionSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/UpdateResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/softwareUpgradeVersionSearch/{pdsn}/{type}"
    .end annotation
.end method

.method public abstract softwareUpgradeVersionSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vhlType"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/UpdateResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/softwareUpgradeVersionSearch/{pdsn}/{type}/{vhlType}"
    .end annotation
.end method

.method public abstract softwareUpgradeVersionSearch(Ljava/lang/String;Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/UpdateResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/softwareUpgradeVersionSearch"
    .end annotation
.end method

.method public abstract updateContact(Lcom/pateo/fci/models/usi/Contact;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lcom/pateo/fci/models/usi/Contact;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/models/usi/Contact;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/contact/update"
    .end annotation
.end method

.method public abstract updateContact(Lcom/pateo/fci/models/usi/Contact;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lcom/pateo/fci/models/usi/Contact;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/models/usi/Contact;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/Response;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/contact/update"
    .end annotation
.end method

.method public abstract updatePreference(Lcom/pateo/fci/models/usi/Preference;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lcom/pateo/fci/models/usi/Preference;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/models/usi/Preference;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/preference/update"
    .end annotation
.end method

.method public abstract updatePreference(Lcom/pateo/fci/models/usi/Preference;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lcom/pateo/fci/models/usi/Preference;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/models/usi/Preference;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/Response;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/preference/update"
    .end annotation
.end method

.method public abstract updateSchedule(Lcom/pateo/fci/models/usi/Schedule;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lcom/pateo/fci/models/usi/Schedule;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/models/usi/Schedule;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ScheduleResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/schedule/update"
    .end annotation
.end method

.method public abstract updateSchedule(Lcom/pateo/fci/models/usi/Schedule;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lcom/pateo/fci/models/usi/Schedule;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/models/usi/Schedule;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/ScheduleResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/schedule/update"
    .end annotation
.end method

.method public abstract updateUserProfile(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/usi/CommonResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            ")",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/userProfile/update"
    .end annotation
.end method

.method public abstract updateUserProfile(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/usi/CommonResponse",
            "<",
            "Lcom/pateo/fci/models/usi/Response;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/userProfile/update"
    .end annotation
.end method
