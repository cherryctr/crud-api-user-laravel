<?php
namespace App\Http\Controllers\API;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
// use Auth;
use Validator;
use Illuminate\Support\Facades\DB;



class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getDataUser()
    {
        //
        $users = User::select('id','name','birth_date','birth_date','gender')->where('birth_place','Bogor')->limit(3)->get();
        $user_count= User::where('birth_place','Bogor')->count();
        //dd($makanan);
        $user_jkt =User::select('id','name','birth_date','birth_date','gender')->where('birth_place','Jakarta')->get();

        $user_countjkt= User::where('birth_place','Jakarta')->count();


            return response()->json(
                [
                    [
                        'birth_place' =>'Bogor',
                        'jumlah_data_user'=>$user_count,
                        'users' => $users,
                    ],

                    [
                        'birth_place' =>'Jakarta',
                        'jumlah_data_user'=>$user_countjkt,
                        'users' => $user_jkt,
                    ]
                ]





            ,200);

    }

    public function getDataUserAll()
    {
        //
        $users = User::paginate(10);
        $users_countall = User::all()->count();

            return response()->json(
                [
                        'jumlah_total_users' => $users_countall,
                        'users' => $users,
                ],200);

    }


    public function create(Request $request)
    {
        //

        $rules = array(


            'name' => 'required|min:5',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:5',
            'gender' => 'required',
            'birth_date' => 'required',
            'birth_place' => 'required',

        );

        $messages =array(
            'name.required' => 'Please enter name.',
            'email.unique' => 'Email already please taken different email',
            'email.require' => 'Please enter Email',
            'password.required' => 'Please enter password',
            'gender.required' => 'Please enter gender',
            'birth_date.required' => 'Birth date cant be null',
            'birth_place.required' => 'Birth date cant be null',

        );

        $validator= Validator::make($request->all(),$rules,$messages);
        if($validator->fails())
        {
            $messages=$validator->messages();
            return response()->json(["messages"=>$messages], 500);
        }



        $users = new User;
        $users->name = $request->name;
        $users->email = $request->email;
        $users->password = bcrypt($request->password);
        $users->gender = $request->gender;

        $users->birth_date = $request->birth_date;
        $users->birth_place = $request->birth_place;



         $users->save();

            return response()->json([ "users" => $users,"message"=>"Users has been created successfully"], 200);


    }


    public function show(User $user,$id)
    {
        //
        $user = User::findOrFail($id);
        // dd()
        if($user){
            return response()->json($user);
        }else {
            return response()->json(['error' => 'data gagal'],401);

        }
    }


    public function update(Request $request, User $user,$id)
    {
        $rules = array(


            'name' => 'required|min:5',
            // 'email' => 'required|email|unique:users',
            // 'password' => 'required|min:5',
            'gender' => 'required',
            'birth_date' => 'required',
            'birth_place' => 'required',

        );

        $messages =array(
            'name.required' => 'Please enter name.',
            // 'email.unique' => 'Email already please taken different email',
            'email.require' => 'Please enter Email',
            // 'password.required' => 'Please enter password',
            'gender.required' => 'Please enter gender',
            'birth_date.required' => 'Birth date cant be null',
            'birth_place.required' => 'Birth date cant be null',

        );

        $validator= Validator::make($request->all(),$rules,$messages);
        if($validator->fails())
        {
            $messages=$validator->messages();
            return response()->json(["messages"=>$messages], 500);
        }



        $users = User::findOrFail($id);
        $users->name = $request->name;
        $users->email = $request->email;
        $users->password = bcrypt($request->password);
        $users->gender = $request->gender;

        $users->birth_date = $request->birth_date;
        $users->birth_place = $request->birth_place;



         $users->update();

        return response()->json([ "users" => $users,"message"=>"Users has been Updated successfully"], 200);


    }


    public function destroy(Request $request,User $user,$id)
    {
        //
        $user = User::findOrFail($id);
        $result = $user->delete();
        if($result){
            return response()->json(['success' => true ]);
        }else {
            return response()->json(['error' => false ]);

        }
    }
}
